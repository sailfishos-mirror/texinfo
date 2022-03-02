use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cpp_line_before_first_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'aaa
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[2];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[4];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[0];
$result_trees{'cpp_line_before_first_node'}{'contents'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'};
$result_trees{'cpp_line_before_first_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_line_before_first_node'}{'contents'}[1];
$result_trees{'cpp_line_before_first_node'}{'contents'}[1]{'parent'} = $result_trees{'cpp_line_before_first_node'};

$result_texis{'cpp_line_before_first_node'} = '\\input texinfo




aaa

@bye
';


$result_texts{'cpp_line_before_first_node'} = '


aaa

';

$result_errors{'cpp_line_before_first_node'} = [
  {
    'error_line' => 'unknown command `gggg\'
',
    'file_name' => 'foo.ptexi',
    'line_nr' => 102,
    'macro' => '',
    'text' => 'unknown command `gggg\'',
    'type' => 'error'
  }
];


$result_floats{'cpp_line_before_first_node'} = {};


1;
