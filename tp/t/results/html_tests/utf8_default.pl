use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'utf8_default'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'utf-8'
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
          'cmdname' => 'documentencoding',
          'extra' => {
            'input_encoding_name' => 'utf-8',
            'input_perl_encoding' => 'utf-8-strict',
            'spaces_before_argument' => ' ',
            'text_arg' => 'utf-8'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'AA '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' --- -- \'` \'\' ``'
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
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2];
$result_trees{'utf8_default'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'utf8_default'}{'contents'}[0];
$result_trees{'utf8_default'}{'contents'}[0]{'parent'} = $result_trees{'utf8_default'};

$result_texis{'utf8_default'} = '@documentencoding utf-8

AA @^e --- -- \'` \'\' ``';


$result_texts{'utf8_default'} = '
AA e^ -- - \'` " "';

$result_errors{'utf8_default'} = [];


$result_floats{'utf8_default'} = {};



$result_converted{'html_text'}->{'utf8_default'} = '
<p>AA &ecirc; &mdash; &ndash; &rsquo;&lsquo; &rdquo; &ldquo;</p>';

1;
