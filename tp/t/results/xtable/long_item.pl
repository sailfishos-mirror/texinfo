use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'long_item'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
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
                              'text' => 'first item      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b'
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
                      'cmdname' => 'itemx',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
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
                          'text' => 'Text.
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
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
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'long_item'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'long_item'}{'contents'}[0];
$result_trees{'long_item'}{'contents'}[0]{'parent'} = $result_trees{'long_item'};

$result_texis{'long_item'} = '@table @emph
@item first item      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa
@itemx second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b

Text.
@end table
';


$result_texts{'long_item'} = 'first item      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa
second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b

Text.
';

$result_errors{'long_item'} = [];


$result_floats{'long_item'} = {};



$result_converted{'plaintext'}->{'long_item'} = '_first item aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa_
_second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b_

     Text.
';


$result_converted{'html_text'}->{'long_item'} = '<dl class="table">
<dt><em class="emph">first item      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa</em></dt>
<dt><em class="emph">second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b</em></dt>
<dd>
<p>Text.
</p></dd>
</dl>
';


$result_converted{'xml'}->{'long_item'} = '<table commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph">first item      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa</itemformat></item>
<itemx spaces=" "><itemformat command="emph">second itemx bbbbbbbbbbbbbbbbbbbbbbbbbbbbb b b b b b b b b b b b b b</itemformat></itemx>
</tableterm><tableitem>
<para>Text.
</para></tableitem></tableentry></table>
';

1;
