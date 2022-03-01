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
              'parent' => {},
              'text' => 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
'
            },
            {
              'cmdname' => 'tex',
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'TTT
'
                    },
                    {
                      'parent' => {},
                      'text' => 'GGG
'
                    },
                    {
                      'parent' => {},
                      'text' => 'HHH
'
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
                    'command_argument' => 'tex',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'tex'
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
                'end_command' => {}
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
              'text' => 'bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0];
$result_trees{'expanded_tex'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'}{'contents'}[0];
$result_trees{'expanded_tex'}{'contents'}[0]{'parent'} = $result_trees{'expanded_tex'};

$result_texis{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
@tex
TTT
GGG
HHH
@end tex
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';


$result_texts{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';

$result_errors{'expanded_tex'} = [];


$result_floats{'expanded_tex'} = {};



$result_converted{'plaintext'}->{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa 
TTT
GGG
HHH
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';

1;
