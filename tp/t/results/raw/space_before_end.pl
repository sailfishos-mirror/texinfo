use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'space_before_end'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
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
                  'text' => 'in tex
'
                },
                {
                  'parent' => {},
                  'text' => '    '
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
                'spaces_before_argument' => '  ',
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in verbatim
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '    ',
              'type' => 'raw'
            },
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
                'spaces_before_argument' => '  ',
                'text_arg' => 'verbatim'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
              'parent' => {},
              'type' => 'elided_block'
            },
            {
              'parent' => {},
              'text' => '   '
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
                'line_nr' => 11,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
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
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4];
$result_trees{'space_before_end'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'space_before_end'}{'contents'}[0];
$result_trees{'space_before_end'}{'contents'}[0]{'parent'} = $result_trees{'space_before_end'};

$result_texis{'space_before_end'} = '@tex
in tex
    @end  tex

@verbatim
in verbatim
    @end  verbatim

@html
   @end html
';


$result_texts{'space_before_end'} = '
in verbatim
    
';

$result_errors{'space_before_end'} = [
  {
    'error_line' => 'warning: @end verbatim should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@end verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'space_before_end'} = {};


1;
