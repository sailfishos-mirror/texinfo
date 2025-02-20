use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entry_before_first_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'type' => 'preamble_before_content'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'before nodes'
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
          'extra' => {
            'index_entry' => [
              'cp',
              1
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 2
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
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
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'index_entry_before_first_node'} = '
@cindex before nodes

@node Top

@printindex cp
';


$result_texts{'index_entry_before_first_node'} = '

';

$result_nodes{'index_entry_before_first_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'Top'
    }
  }
];

$result_menus{'index_entry_before_first_node'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'index_entry_before_first_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'index_entry_before_first_node'} = {};


$result_indices_sort_strings{'index_entry_before_first_node'} = {
  'cp' => [
    'before nodes'
  ]
};



$result_converted{'info'}->{'index_entry_before_first_node'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

 [index ]
* Menu:

* before nodes:                          (outside of any node). (line 0)


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'index_entry_before_first_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'index_entry_before_first_node'} = '* Menu:

* before nodes:                          (outside of any node). (line 0)

';

$result_converted_errors{'plaintext'}->{'index_entry_before_first_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'index_entry_before_first_node'} = '<a class="index-entry-id" id="index-before-nodes"></a>

<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Top_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-before-nodes">before nodes</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
';

$result_converted_errors{'html_text'}->{'index_entry_before_first_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' for @printindex cp outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'index_entry_before_first_node'} = '<preamblebeforebeginning>
</preamblebeforebeginning><cindex index="cp" spaces=" "><indexterm index="cp" number="1">before nodes</indexterm></cindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename></node>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
