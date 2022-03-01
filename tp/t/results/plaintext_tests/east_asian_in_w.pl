use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'east_asian_in_w'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'utf-8'
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
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'utf-8',
                'input_perl_encoding' => 'utf-8-strict',
                'spaces_before_argument' => ' ',
                'text_arg' => 'utf-8'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'east_asian_in_w.texi',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'This option overrides an include file name section and aaaaa aaaa
'
            },
            {
              'parent' => {},
              'text' => '('
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => "\x{5305}\x{542b}\x{6587}\x{5b57}"
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'east_asian_in_w.texi',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ').
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => 'east_asian_in_w.texi',
            'line_nr' => 6,
            'macro' => ''
          }
        },
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
              'text' => 'This option overrides an include file name section and aaaaa aaaa
'
            },
            {
              'parent' => {},
              'text' => "(\x{5305}\x{542b}\x{6587}\x{5b57}).
"
            }
          ],
          'extra' => {
            'noindent' => 1
          },
          'parent' => {},
          'type' => 'paragraph'
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[4]{'extra'}{'command'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[3];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[5];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[5];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'east_asian_in_w'}{'contents'}[0];
$result_trees{'east_asian_in_w'}{'contents'}[0]{'parent'} = $result_trees{'east_asian_in_w'};

$result_texis{'east_asian_in_w'} = '@documentencoding utf-8

This option overrides an include file name section and aaaaa aaaa
(@w{包含文字}).

@noindent
This option overrides an include file name section and aaaaa aaaa
(包含文字).

';


$result_texts{'east_asian_in_w'} = '
This option overrides an include file name section and aaaaa aaaa
(包含文字).

This option overrides an include file name section and aaaaa aaaa
(包含文字).

';

$result_errors{'east_asian_in_w'} = [];


$result_floats{'east_asian_in_w'} = {};


1;
