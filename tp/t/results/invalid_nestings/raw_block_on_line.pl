use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_block_on_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
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
                  'cmdname' => 'tex',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0];

$result_texis{'raw_block_on_line'} = '@cindex @tex
';


$result_texts{'raw_block_on_line'} = '';

$result_errors{'raw_block_on_line'} = [
  {
    'error_line' => 'no matching `@end tex\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'empty index key in @cindex',
    'type' => 'warning'
  }
];


$result_floats{'raw_block_on_line'} = {};


$result_indices_sort_strings{'raw_block_on_line'} = {};


1;
