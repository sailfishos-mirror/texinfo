use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_expansion_in_set'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'V',
              'type' => 'misc_arg'
            },
            {
              'text' => '@value{V}',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'V',
              '@value{V}'
            ]
          },
          'info' => {
            'arg_line' => ' V @value{V}
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'recursive_expansion_in_set'} = '@set V @value{V}

';


$result_texts{'recursive_expansion_in_set'} = '
';

$result_errors{'recursive_expansion_in_set'} = [
  {
    'error_line' => 'warning: value call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'value call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)',
    'type' => 'warning'
  }
];


$result_floats{'recursive_expansion_in_set'} = {};


1;
