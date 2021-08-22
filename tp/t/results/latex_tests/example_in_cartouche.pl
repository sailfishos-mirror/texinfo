use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'example_in_cartouche'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'example_in_cartouche.info'
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
      'cmdname' => 'setfilename',
      'extra' => {
        'spaces_before_argument' => ' ',
        'text_arg' => 'example_in_cartouche.info'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'cartouche',
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
              'text' => 'Normal cartouche
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'text' => 'New para
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
                  'text' => 'cartouche'
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
            'command_argument' => 'cartouche',
            'spaces_before_argument' => ' ',
            'text_arg' => 'cartouche'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'cartouche',
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
          'cmdname' => 'example',
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
                  'text' => '% pwd
'
                },
                {
                  'parent' => {},
                  'text' => '/usr/local/share/emacs
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cartouche'
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
            'command_argument' => 'cartouche',
            'spaces_before_argument' => ' ',
            'text_arg' => 'cartouche'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'example_in_cartouche'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[0]{'args'}[0];
$result_trees{'example_in_cartouche'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[0];
$result_trees{'example_in_cartouche'}{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'};
$result_trees{'example_in_cartouche'}{'contents'}[1]{'parent'} = $result_trees{'example_in_cartouche'};
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[3];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'example_in_cartouche'}{'contents'}[2]{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[2]{'parent'} = $result_trees{'example_in_cartouche'};
$result_trees{'example_in_cartouche'}{'contents'}[3]{'parent'} = $result_trees{'example_in_cartouche'};
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_in_cartouche'}{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'example_in_cartouche'}{'contents'}[4];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'example_in_cartouche'}{'contents'}[4]{'contents'}[2];
$result_trees{'example_in_cartouche'}{'contents'}[4]{'parent'} = $result_trees{'example_in_cartouche'};

$result_texis{'example_in_cartouche'} = '@setfilename example_in_cartouche.info

@cartouche
Normal cartouche

New para
@end cartouche

@cartouche
@example
% pwd
/usr/local/share/emacs
@end example
@end cartouche
';


$result_texts{'example_in_cartouche'} = '
Normal cartouche

New para

% pwd
/usr/local/share/emacs
';

$result_errors{'example_in_cartouche'} = [];


$result_floats{'example_in_cartouche'} = {};



$result_converted{'latex'}->{'example_in_cartouche'} = '
\\begin{mdframed}[style=GNUTexinfocartouche]
Normal cartouche

New para
\\end{mdframed}

\\begin{mdframed}[style=GNUTexinfocartouche]
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\% pwd
/usr/local/share/emacs
\\endgroup{}%
\\end{mdframed}
';

1;
