use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'customize_informative_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'customize_informative_commands'} = '@chapter chap
';


$result_texts{'customize_informative_commands'} = '1 chap
******
';

$result_sectioning{'customize_informative_commands'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'customize_informative_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'customize_informative_commands'};

$result_errors{'customize_informative_commands'} = [];


$result_floats{'customize_informative_commands'} = {};



$result_converted{'latex_text'}->{'customize_informative_commands'} = '\\begin{document}
\\chapter{{chap}}
';

1;
