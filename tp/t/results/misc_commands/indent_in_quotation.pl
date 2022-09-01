use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indent_in_quotation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'cmdname' => 'indent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'indent in quotation
'
                }
              ],
              'extra' => {
                'indent' => 1
              },
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'command'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'indent_in_quotation'}{'contents'}[0];
$result_trees{'indent_in_quotation'}{'contents'}[0]{'parent'} = $result_trees{'indent_in_quotation'};

$result_texis{'indent_in_quotation'} = '@quotation
@indent
indent in quotation
@end quotation
';


$result_texts{'indent_in_quotation'} = 'indent in quotation
';

$result_errors{'indent_in_quotation'} = [];


$result_floats{'indent_in_quotation'} = {};



$result_converted{'plaintext'}->{'indent_in_quotation'} = '     indent in quotation
';


$result_converted{'html_text'}->{'indent_in_quotation'} = '<blockquote class="quotation">
<p>indent in quotation
</p></blockquote>
';


$result_converted{'latex'}->{'indent_in_quotation'} = '\\begin{quote}
indent in quotation
\\end{quote}
';

1;
