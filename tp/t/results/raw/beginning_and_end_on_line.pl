use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'beginning_and_end_on_line'} = {
  'contents' => [
    {
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
                  'text' => 'in tex '
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'tex',
          'contents' => [
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'tex'
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
                  'text' => 'in verbatim '
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
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
                'text_arg' => 'verbatim'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
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
                  'parent' => {},
                  'text' => 'in html '
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
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
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
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
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'beginning_and_end_on_line'}{'contents'}[0];
$result_trees{'beginning_and_end_on_line'}{'contents'}[0]{'parent'} = $result_trees{'beginning_and_end_on_line'};

$result_texis{'beginning_and_end_on_line'} = '
@tex in tex @end tex

@verbatim in verbatim @end verbatim

@html in html @end html
';


$result_texts{'beginning_and_end_on_line'} = '


';

$result_errors{'beginning_and_end_on_line'} = [
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'beginning_and_end_on_line'} = {};


1;
