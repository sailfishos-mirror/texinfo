use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'printindex_with_space_before'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
                  'text' => 'index'
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
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
              'text' => 'Text.
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'printindex_with_space_before'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'};
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'args'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[3];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[4];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'printindex_with_space_before'}{'contents'}[1];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'printindex_with_space_before'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'printindex_with_space_before'}{'contents'}[1]{'parent'} = $result_trees{'printindex_with_space_before'};

$result_texis{'printindex_with_space_before'} = '@node Top

@cindex index

Text.
@printindex cp
';


$result_texts{'printindex_with_space_before'} = '

Text.
';

$result_nodes{'printindex_with_space_before'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'printindex_with_space_before'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'printindex_with_space_before'} = [];


$result_floats{'printindex_with_space_before'} = {};


$result_indices_sort_strings{'printindex_with_space_before'} = {
  'cp' => [
    'index'
  ]
};



$result_converted{'info'}->{'printindex_with_space_before'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Text.

 [index ]
* Menu:

* index:                                 Top.                   (line 3)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'printindex_with_space_before'} = 'Text.

* Menu:

* index:                                 Top.                   (line 0)

';


$result_converted{'html_text'}->{'printindex_with_space_before'} = '<h1 class="node" id="Top">Top</h1>

<a class="index-entry-id" id="index-index"></a>

<p>Text.
</p><div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-index">index</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
';

1;
