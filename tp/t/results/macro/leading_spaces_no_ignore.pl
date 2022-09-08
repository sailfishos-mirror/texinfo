use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'leading_spaces_no_ignore'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '  Some  here
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '  text',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' mymacro
'
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '  ',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Some  here
'
            },
            {
              'parent' => {},
              'text' => '  text
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
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[3];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[3];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'leading_spaces_no_ignore'}{'contents'}[0];
$result_trees{'leading_spaces_no_ignore'}{'contents'}[0]{'parent'} = $result_trees{'leading_spaces_no_ignore'};

$result_texis{'leading_spaces_no_ignore'} = '@macro mymacro
  Some  here
  text
@end macro

  Some  here
  text
';


$result_texts{'leading_spaces_no_ignore'} = '
Some  here
  text
';

$result_errors{'leading_spaces_no_ignore'} = [];


$result_floats{'leading_spaces_no_ignore'} = {};


1;
