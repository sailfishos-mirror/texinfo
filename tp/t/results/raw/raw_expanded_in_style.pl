use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_expanded_in_style'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
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
                      'cmdname' => 'html',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in html
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'rawpreformatted'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'html'
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
                            'text_arg' => 'html'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
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
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'}{'contents'}[0];
$result_trees{'raw_expanded_in_style'}{'contents'}[0]{'parent'} = $result_trees{'raw_expanded_in_style'};

$result_texis{'raw_expanded_in_style'} = '@code{
@html
in html
@end html
}';


$result_texts{'raw_expanded_in_style'} = '
';

$result_errors{'raw_expanded_in_style'} = [];


$result_floats{'raw_expanded_in_style'} = {};



$result_converted{'plaintext'}->{'raw_expanded_in_style'} = '‘ 
in html
’
';


$result_converted{'html_text'}->{'raw_expanded_in_style'} = '<p><code class="code">
in html
</code></p>';

1;
