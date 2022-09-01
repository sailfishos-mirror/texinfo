use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_quotation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
                'line_nr' => 2,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Empty'
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
          'cmdname' => 'quotation',
          'contents' => [
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
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
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
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
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
          'cmdname' => 'quotation',
          'contents' => [
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => '*',
                  'parent' => {}
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
          'cmdname' => 'quotation',
          'contents' => [
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
                'line_nr' => 11,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'};

$result_texis{'empty_quotation'} = '@quotation
@end quotation

@quotation Empty
@end quotation

@quotation @asis{}
@end quotation

@quotation @*
@end quotation
';


$result_texts{'empty_quotation'} = '
Empty


';

$result_errors{'empty_quotation'} = [];


$result_floats{'empty_quotation'} = {};



$result_converted{'plaintext'}->{'empty_quotation'} = '     Empty: 
     : 

     : ';


$result_converted{'html_text'}->{'empty_quotation'} = '<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>
';


$result_converted{'xml'}->{'empty_quotation'} = '<quotation endspaces=" ">
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype>Empty</quotationtype>
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype><asis></asis></quotationtype>
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype>&linebreak;</quotationtype>
</quotation>
';


$result_converted{'docbook'}->{'empty_quotation'} = '<blockquote></blockquote>
<blockquote></blockquote>
<blockquote></blockquote>
<blockquote></blockquote>';

1;
