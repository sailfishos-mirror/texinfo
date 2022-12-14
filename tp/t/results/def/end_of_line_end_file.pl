use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'end_of_line_end_file'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'text' => 'category'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'text' => 'deffn_name'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'text' => 'arguments'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'content_normalized' => [
                    {}
                  ],
                  'entry_content' => [
                    {}
                  ],
                  'entry_element' => {},
                  'entry_number' => 1,
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn'
                },
                'original_def_cmdname' => 'deffn'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'type' => 'def_line'
            }
          ],
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'}[0] = $result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'end_of_line_end_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'end_of_line_end_file'} = '@deffn category deffn_name arguments ';


$result_texts{'end_of_line_end_file'} = 'category: deffn_name arguments
';

$result_errors{'end_of_line_end_file'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end deffn\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'no matching `@end deffn\'',
    'type' => 'error'
  }
];


$result_floats{'end_of_line_end_file'} = {};


$result_indices_sort_strings{'end_of_line_end_file'} = {
  'fn' => [
    'deffn_name'
  ]
};



$result_converted{'xml'}->{'end_of_line_end_file'} = '<deffn spaces=" "><definitionterm><indexterm index="fn" number="1">deffn_name</indexterm><defcategory>category</defcategory> <deffunction>deffn_name</deffunction> <defparam>arguments</defparam> </definitionterm>
</deffn>
';

1;
