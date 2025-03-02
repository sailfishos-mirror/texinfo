use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'error_in_footnote'} = '*document_root C2
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C7 l2
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
  *1 @float C7 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E2]
  |float_number:{1}
  |float_type:{Text}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{label}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {label}
   {empty_line:\\n}
   *paragraph C1
    {Float text1\\n}
   {empty_line:\\n}
   *2 @caption C1 l8
   |EXTRA
   |float:[E1]
    *brace_command_context C1
     *paragraph C8
      {Caption. }
      *3 @TeX l8
      {. \\n}
      {In caption }
      *4 @strong C1 l9
       *brace_container C1
        {note caption}
      {.  \\n}
      {Now footnote}
      *5 @footnote C1 l10
      |EXTRA
      |global_command_number:{1}
       *brace_command_context C1
        *paragraph C5
         *6 @LaTeX l10
         {. \\n}
         {and strong }
         *7 @strong C1 l11
          *brace_container C1
           {Note footnote}
         {.}
   {spaces_after_close_brace:\\n}
   *@end C1 l12
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
  *@listoffloats C1 l14
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
  {empty_line:\\n}
  *@listoffloats C1 l16
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Text}
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Text}
';


$result_texis{'error_in_footnote'} = '
@node Top

@float Text, label

Float text1

@caption{Caption. @TeX. 
In caption @strong{note caption}.  
Now footnote@footnote{@LaTeX. 
and strong @strong{Note footnote}.}}
@end float

@listoffloats Text

@listoffloats Text
';


$result_texts{'error_in_footnote'} = '

Text, label

Float text1



';

$result_nodes{'error_in_footnote'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'error_in_footnote'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'error_in_footnote'} = [
  {
    'error_line' => '@TeX expected braces
',
    'line_nr' => 8,
    'text' => '@TeX expected braces',
    'type' => 'error'
  },
  {
    'error_line' => '@LaTeX expected braces
',
    'line_nr' => 10,
    'text' => '@LaTeX expected braces',
    'type' => 'error'
  }
];


$result_floats{'error_in_footnote'} = {
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
        'normalized' => 'label'
      }
    }
  ]
};
$result_floats{'error_in_footnote'}{'Text'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'error_in_footnote'}{'Text'}[0];



$result_converted{'info'}->{'error_in_footnote'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Float text1

Text 1: Caption.  TeX.  In caption *note caption*.  Now footnote(1)

* Menu:

* Text 1: label.                         Caption.  TeX.  In caption
                                         *note caption*.  Now
                                         footnote(1)

* Menu:

* Text 1: label.                         Caption.  TeX.  In caption
                                         *note caption*.  Now
                                         footnote(1)

   ---------- Footnotes ----------

   (1) LaTeX.  and strong *Note footnote*.


Tag Table:
Node: Top27
Ref: label61
Ref: Top-Footnote-1565

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'error_in_footnote'} = [
  {
    'error_line' => 'warning: @strong{Note...} produces a spurious cross-reference in Info; reword to avoid that
',
    'line_nr' => 9,
    'text' => '@strong{Note...} produces a spurious cross-reference in Info; reword to avoid that',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @strong{Note...} produces a spurious cross-reference in Info; reword to avoid that
',
    'line_nr' => 9,
    'text' => '@strong{Note...} produces a spurious cross-reference in Info; reword to avoid that',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @strong{Note...} produces a spurious cross-reference in Info; reword to avoid that
',
    'line_nr' => 9,
    'text' => '@strong{Note...} produces a spurious cross-reference in Info; reword to avoid that',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @strong{Note...} produces a spurious cross-reference in Info; reword to avoid that
',
    'line_nr' => 11,
    'text' => '@strong{Note...} produces a spurious cross-reference in Info; reword to avoid that',
    'type' => 'warning'
  }
];


1;
