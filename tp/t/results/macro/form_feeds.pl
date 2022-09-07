use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'form_feeds'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'b',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'f \\a\\ n \\b\\',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' mymacro{a, b}
'
          },
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
          'type' => 'empty_line_after_command'
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
              'parent' => {},
              'text' => 'oneargmacro',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'c',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'g \\c\\ v',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' oneargmacro{c}
'
          },
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
          'type' => 'empty_line_after_command'
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
              'text' => 'f arg1'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'n arg2
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
              'text' => 'g a'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'rgline v
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[6];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[9];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'form_feeds'}{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[0]{'parent'} = $result_trees{'form_feeds'};

$result_texis{'form_feeds'} = '@macro mymacro{a, b}
f \\a\\ n \\b\\
@end macro

@macro oneargmacro{c}
g \\c\\ v
@end macro

f arg1 n arg2

g a@{rgline v

';


$result_texts{'form_feeds'} = '

f arg1n arg2

g a{rgline v

';

$result_errors{'form_feeds'} = [];


$result_floats{'form_feeds'} = {};


1;
