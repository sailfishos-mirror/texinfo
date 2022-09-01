use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw'} = {
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
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in <tex>
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
                      'text' => 'tex'
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
                'command_argument' => 'tex',
                'spaces_before_argument' => ' ',
                'text_arg' => 'tex'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
              'text' => 'Para
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
              'cmdname' => 'xml',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '<in />
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
                          'text' => 'xml'
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
                    'command_argument' => 'xml',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'xml'
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
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw'}{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'raw'}{'contents'}[0]{'contents'}[2];
$result_trees{'raw'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw'}{'contents'}[0];
$result_trees{'raw'}{'contents'}[0]{'parent'} = $result_trees{'raw'};

$result_texis{'raw'} = '@tex
in <tex>
@end tex

Para
@xml
<in />
@end xml
';


$result_texts{'raw'} = '
Para
';

$result_errors{'raw'} = [];


$result_floats{'raw'} = {};



$result_converted{'xml'}->{'raw'} = '<tex endspaces=" ">
in &lt;tex&gt;
</tex>

<para>Para
<in />
</para>';

1;
