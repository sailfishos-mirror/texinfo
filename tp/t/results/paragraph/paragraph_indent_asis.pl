use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_indent_asis'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'asis'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              'asis'
            ],
            'spaces_before_argument' => ' '
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
              'text' => 'para
'
            },
            {
              'parent' => {},
              'text' => '  fff
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
              'parent' => {},
              'text' => '  ',
              'type' => 'empty_spaces_before_paragraph'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in quotation
'
                }
              ],
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
                'line_nr' => 8,
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
            'line_nr' => 6,
            'macro' => ''
          }
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'paragraph_indent_asis'}{'contents'}[0];
$result_trees{'paragraph_indent_asis'}{'contents'}[0]{'parent'} = $result_trees{'paragraph_indent_asis'};

$result_texis{'paragraph_indent_asis'} = '@paragraphindent asis

  para
  fff

@quotation
  in quotation
@end quotation

';


$result_texts{'paragraph_indent_asis'} = '
para
  fff

in quotation

';

$result_errors{'paragraph_indent_asis'} = [];


$result_floats{'paragraph_indent_asis'} = {};



$result_converted{'plaintext'}->{'paragraph_indent_asis'} = '  para fff

       in quotation

';


$result_converted{'html_text'}->{'paragraph_indent_asis'} = '
<p>para
  fff
</p>
<blockquote class="quotation">
<p>in quotation
</p></blockquote>

';

1;
