use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'center_flush'} = '*document_root C1
 *before_node_section C5
  *@center C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {centered}
  {empty_line:\\n}
  *@flushleft C10 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C2
    {left and\\n}
    {left2\\n}
   {empty_line:\\n}
   *paragraph C1
    {left3.\\n}
   {empty_line:\\n}
   {empty_line:\\n}
   *paragraph C2
    {left Last\\n}
    {  with space.\\n}
   {empty_line:\\n}
   *paragraph C4
    {Now anchor\\n}
    *0 @anchor C1 l14
    |EXTRA
    |is_target:{1}
    |normalized:{anchor-in-flushleft}
     *brace_arg C1
      {anchor in flushleft}
    {spaces_after_close_brace:\\n}
    {after anchor\\n}
   *@end C1 l16
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{flushleft}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {flushleft}
  {empty_line:\\n}
  *@flushright C10 l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C2
    {right and\\n}
    {right2\\n}
   {empty_line:\\n}
   *paragraph C1
    {Right3\\n}
   {empty_line:\\n}
   {empty_line:\\n}
   *paragraph C2
    {Right last\\n}
    {  with space.     \\n}
   {empty_line:\\n}
   *paragraph C8
    {Now anchor\\n}
    *1 @anchor C1 l29
    |EXTRA
    |is_target:{1}
    |normalized:{anchor-in-flushright}
     *brace_arg C1
      {anchor in flushright}
    {spaces_after_close_brace:\\n}
    {after anchor\\n}
    {Second anchor in text }
    *2 @anchor C1 l31
    |EXTRA
    |is_target:{1}
    |normalized:{second-anchor-in-flushright}
     *brace_arg C1
      {second anchor in flushright}
    {spaces_after_close_brace: }
    {after anchor.\\n}
   *@end C1 l32
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{flushright}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {flushright}
';


$result_texis{'center_flush'} = '@center centered

@flushleft
left and
left2

left3.


left Last
  with space.

Now anchor
@anchor{anchor in flushleft}
after anchor
@end flushleft

@flushright
right and
right2

Right3


Right last
  with space.     

Now anchor
@anchor{anchor in flushright}
after anchor
Second anchor in text @anchor{second anchor in flushright} after anchor.
@end flushright
';


$result_texts{'center_flush'} = 'centered

left and
left2

left3.


left Last
  with space.

Now anchor
after anchor

right and
right2

Right3


Right last
  with space.     

Now anchor
after anchor
Second anchor in text after anchor.
';

$result_errors{'center_flush'} = [];



$result_converted{'info'}->{'center_flush'} = 'This is , produced from .

                               centered

left and
left2

left3.

left Last
with space.

Now anchor
after anchor

                                                              right and
                                                                 right2

                                                                 Right3

                                                             Right last
                                                            with space.

                                                             Now anchor
                                                           after anchor
                                    Second anchor in text after anchor.

Tag Table:
Ref: anchor in flushleft99
Ref: anchor in flushright607
Ref: second anchor in flushright677

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'center_flush'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'line_nr' => 14,
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'line_nr' => 29,
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'line_nr' => 31,
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  }
];


1;
