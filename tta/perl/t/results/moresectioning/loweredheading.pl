use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'loweredheading'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'lowersections',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ]
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Foo'
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
          'cmdname' => 'heading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Bar'
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
            'level_modifier' => -1
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 3
          }
        }
      ],
      'extra' => {
        'level_modifier' => -1,
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};

$result_texis{'loweredheading'} = '@lowersections
@section Foo
@heading Bar
@bye
';


$result_texts{'loweredheading'} = '1 Foo
-----
Bar
---
';

$result_sectioning{'loweredheading'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {
          'level_modifier' => -1,
          'section_level' => 3,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 2
  }
};
$result_sectioning{'loweredheading'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'loweredheading'};

$result_errors{'loweredheading'} = [];


$result_floats{'loweredheading'} = {};


1;
