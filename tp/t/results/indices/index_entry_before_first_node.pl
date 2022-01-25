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
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'before nodes'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'};
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_before_first_node'}{'contents'}[1];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_before_first_node'}{'contents'}[1]{'parent'} = $result_trees{'index_entry_before_first_node'};

$result_texis{'index_entry_before_first_node'} = '
@cindex before nodes

@node Top

@printindex cp
';


$result_texts{'index_entry_before_first_node'} = '

';

$result_nodes{'index_entry_before_first_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'index_entry_before_first_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'index_entry_before_first_node'} = [
  {
    'error_line' => ':2: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
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
    'error_line' => ':2: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'index_entry_before_first_node'} = '* Menu:

* before nodes:                          (outside of any node). (line 0)

';

$result_converted_errors{'plaintext'}->{'index_entry_before_first_node'} = [
  {
    'error_line' => ':2: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'index_entry_before_first_node'} = '<a class="index-entry-id" id="index-before-nodes"></a>

<h1 class="node" id="Top">Top</h1>

<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-before-nodes">before nodes</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
</div>
';

1;
