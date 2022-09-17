use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inline_missing_first_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'format' => undef
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'format' => undef
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline_missing_first_arg'}{'contents'}[0];
$result_trees{'inline_missing_first_arg'}{'contents'}[0]{'parent'} = $result_trees{'inline_missing_first_arg'};

$result_texis{'inline_missing_first_arg'} = '@inlinefmt{ ,}. @inlineraw{,}.
';


$result_texts{'inline_missing_first_arg'} = '. .
';

$result_errors{'inline_missing_first_arg'} = [
  {
    'error_line' => 'warning: @inlinefmt missing first argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@inlinefmt missing first argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @inlineraw missing first argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@inlineraw missing first argument',
    'type' => 'warning'
  }
];


$result_floats{'inline_missing_first_arg'} = {};


1;
