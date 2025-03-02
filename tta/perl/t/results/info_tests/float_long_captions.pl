use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'float_long_captions'} = '*document_root C2
 *before_node_section
 *0 @node C7 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @float C4 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E2]
  |float_number:{1}
  |float_type:{Text}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{text1}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {text1}
   *2 @caption C1 l4
   |EXTRA
   |float:[E1]
    *brace_command_context C1
     *paragraph C1
      {AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC}
   {spaces_after_close_brace:\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *3 @float C4 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E4]
  |float_number:{2}
  |float_type:{Text}
  |global_command_number:{2}
  |is_target:{1}
  |normalized:{text2}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {text2}
   *4 @caption C1 l8
   |EXTRA
   |float:[E3]
    *brace_command_context C1
     *paragraph C1
      {AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC}
   {spaces_after_close_brace:\\n}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *@listoffloats C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Text}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Text}
';


$result_texis{'float_long_captions'} = '@node Top

@float Text, text1
@caption{AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC}
@end float

@float Text, text2
@caption{AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC}
@end float

@listoffloats Text
';


$result_texts{'float_long_captions'} = '
Text, text1

Text, text2

';

$result_errors{'float_long_captions'} = [];


$result_floats{'float_long_captions'} = {
  'Text' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1',
        'float_type' => 'Text',
        'normalized' => 'text1'
      }
    },
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '2',
        'float_type' => 'Text',
        'normalized' => 'text2'
      }
    }
  ]
};
$result_floats{'float_long_captions'}{'Text'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_long_captions'}{'Text'}[0];
$result_floats{'float_long_captions'}{'Text'}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_long_captions'}{'Text'}[1];



$result_converted{'info'}->{'float_long_captions'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Text 1: AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC

Text 2: AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC

* Menu:

* Text 1: text1.                         AAAAAAAAAAAAAAAA BBBBB
                                         CCCCCCCCCCC
* Text 2: text2.                         AAAAAAAAAAAAAAAA BBBBBB
                                         CCCCCCCCCCC


Tag Table:
Node: Top27
Ref: text161
Ref: text2105

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
