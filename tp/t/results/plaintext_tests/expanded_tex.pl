use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'expanded_tex'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
'
            },
            {
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'TTT
'
                    },
                    {
                      'text' => 'GGG
'
                    },
                    {
                      'text' => 'HHH
'
                    }
                  ],
                  'type' => 'rawpreformatted'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'tex'
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
                    'text_arg' => 'tex'
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
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => 'bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
@tex
TTT
GGG
HHH
@end tex
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';


$result_texts{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
TTT
GGG
HHH
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';

$result_errors{'expanded_tex'} = [];


$result_floats{'expanded_tex'} = {};



$result_converted{'plaintext'}->{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa TTT
GGG
HHH
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3
bbbbbbbbbbbbbb4.
';

1;
