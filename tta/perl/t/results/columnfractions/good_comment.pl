use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'good_comment'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'columnfractions',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '0.4 .6 5.'
                            }
                          ],
                          'info' => {
                            'comment_at_end' => {
                              'cmdname' => 'c',
                              'contents' => [
                                {
                                  'text' => ' comment
',
                                  'type' => 'rawline_arg'
                                }
                              ]
                            }
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'extra' => {
                        'misc_args' => [
                          '0.4',
                          '.6',
                          '5.'
                        ]
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
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
                    }
                  ],
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 2
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'max_columns' => 3
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'good_comment'}{'contents'}[0]{'contents'}[0]{'extra'}{'columnfractions'} = $result_trees{'good_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'good_comment'} = '@multitable @columnfractions 0.4 .6 5.@c comment
@end multitable';


$result_texts{'good_comment'} = '';

$result_errors{'good_comment'} = [];


$result_floats{'good_comment'} = {};



$result_converted{'html_text'}->{'good_comment'} = '';


$result_converted{'xml'}->{'good_comment'} = '<multitable spaces=" " endspaces=" "><columnfractions spaces=" " line="0.4 .6 5.@c comment"><columnfraction value="0.4"></columnfraction><columnfraction value=".6"></columnfraction><columnfraction value="5."></columnfraction></columnfractions><!-- c comment -->
</multitable>';


$result_converted{'latex_text'}->{'good_comment'} = '\\begin{tabular}{m{0.4\\textwidth} m{.6\\textwidth} m{5.\\textwidth}}%
\\end{tabular}%
';

1;
