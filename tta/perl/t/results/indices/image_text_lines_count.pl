use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'image_text_lines_count'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
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
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'count_image_text'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => '
'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'index entry'
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
            'element_node' => {},
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
            'line_nr' => 5
          },
          'type' => 'index_entry_command'
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
            'line_nr' => 7
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
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'image_text_lines_count'}{'contents'}[1]{'contents'}[5]{'extra'}{'element_node'} = $result_trees{'image_text_lines_count'}{'contents'}[1];

$result_texis{'image_text_lines_count'} = '@node Top

@image{count_image_text}

@cindex index entry

@printindex cp
';


$result_texts{'image_text_lines_count'} = '
count_image_text


';

$result_nodes{'image_text_lines_count'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_text_lines_count'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_text_lines_count'} = [];


$result_floats{'image_text_lines_count'} = {};


$result_indices_sort_strings{'image_text_lines_count'} = {
  'cp' => [
    'index entry'
  ]
};



$result_converted{'info'}->{'image_text_lines_count'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

aaaa
bbb
cc

ff


 [index ]
* Menu:

* index entry:                           Top.                  (line 10)


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'image_text_lines_count'} = 'aaaa
bbb
cc

ff


* Menu:

* index entry:                           Top.                   (line 7)

';


$result_converted{'html_text'}->{'image_text_lines_count'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<img class="image" src="count_image_text.jpg" alt="count_image_text">

<a class="index-entry-id" id="index-index-entry"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Top_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry">index entry</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
';

$result_converted_errors{'html_text'}->{'image_text_lines_count'} = [
  {
    'error_line' => 'warning: @image file `count_image_text\' (for HTML) not found, using `count_image_text.jpg\'
',
    'line_nr' => 3,
    'text' => '@image file `count_image_text\' (for HTML) not found, using `count_image_text.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'image_text_lines_count'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename></node>

<image><imagefile>count_image_text</imagefile></image>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
