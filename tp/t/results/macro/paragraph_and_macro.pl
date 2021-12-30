use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_and_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'aempty',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [],
          'extra' => {
            'arg_line' => ' aempty
'
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
              'text' => 'aspace',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '   ',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' aspace
'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
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
              'text' => 'word',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a word',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' word
'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '    
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
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
              'text' => 'text after empty.
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
          'parent' => {},
          'text' => '   
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '       
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '    ',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'text after space.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[14];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[21];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'paragraph_and_macro'}{'contents'}[0];
$result_trees{'paragraph_and_macro'}{'contents'}[0]{'parent'} = $result_trees{'paragraph_and_macro'};

$result_texis{'paragraph_and_macro'} = '@macro aempty
@end macro

@macro aspace
   
@end macro

@macro word
a word
@end macro



    

 text after empty.

   

       

    text after space.
';


$result_texts{'paragraph_and_macro'} = '




    

text after empty.

   

       

text after space.
';

$result_errors{'paragraph_and_macro'} = [];


$result_floats{'paragraph_and_macro'} = {};


1;
