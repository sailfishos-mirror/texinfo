use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cond_xml'} = '*document_root C5
 *before_node_section C4
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C5
   *@c C1
    {rawline_arg: test conditions\\n}
   {empty_line:\\n}
   *0 @html C3 cond.texi:l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *elided_rawpreformatted C1
     {raw:This is html text.\\n}
    *@end C1 cond.texi:l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{html}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {html}
   {empty_line:\\n}
   >SOURCEMARKS
   >ignored_conditional_block<1><p:1>
    >*@ifhtml C3 cond.texi:l9
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
     >{raw:This is ifhtml text.\\n}
     >*@end C1 cond.texi:l11
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifhtml}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifhtml}
   {empty_line:\\n}
   >SOURCEMARKS
   >expanded_conditional_command<start;1><p:1>
    >*@ifnothtml C1 cond.texi:l13
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
  *paragraph C1
   {This is ifnothtml text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:24>
    >*@end C1 cond.texi:l15
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnothtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnothtml}
  {empty_line:\\n}
 *1 @node C1 cond.texi:l17
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 cond.texi:l18
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {conditionals}
  {empty_line:\\n}
 *3 @node C12 cond.texi:l20
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E1]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<2><p:1>
   >*@ifinfo C3 cond.texi:l23
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:This is ifinfo text.\\n}
    >*@end C1 cond.texi:l25
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifinfo}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifinfo}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;2><p:1>
   >*@ifnotinfo C1 cond.texi:l27
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C1
   {This is ifnotinfo text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;2><p:24>
    >*@end C1 cond.texi:l29
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnotinfo}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnotinfo}
  {empty_line:\\n}
  {empty_line:\\n}
  *4 @tex C3 cond.texi:l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C1
    {raw:This is tex text.\\n}
   *@end C1 cond.texi:l34
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {tex}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<3><p:1>
   >*@iftex C3 cond.texi:l36
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:This is iftex text.\\n}
    >*@end C1 cond.texi:l38
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{iftex}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{iftex}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;3><p:1>
   >*@ifnottex C1 cond.texi:l40
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C1
   {This is ifnottex text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;3><p:23>
    >*@end C1 cond.texi:l42
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnottex}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnottex}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'cond_xml'} = '\\input texinfo

@c test conditions

@html
This is html text.
@end html


This is ifnothtml text.

@node Top
@top conditionals

@node chap



This is ifnotinfo text.


@tex
This is tex text.
@end tex


This is ifnottex text.

@bye
';


$result_texts{'cond_xml'} = '


This is ifnothtml text.

conditionals
************




This is ifnotinfo text.




This is ifnottex text.

';

$result_sectioning{'cond_xml'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'cond_xml'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'cond_xml'};

$result_nodes{'cond_xml'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'cond_xml'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'cond_xml'}[0];
$result_nodes{'cond_xml'}[1] = $result_nodes{'cond_xml'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'cond_xml'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'cond_xml'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'file_name' => 'cond.texi',
    'line_nr' => 20,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'cond_xml'} = {};



$result_converted{'xml'}->{'cond_xml'} = '<preamblebeforebeginning>\\input texinfo

</preamblebeforebeginning><!-- c test conditions -->

<html endspaces=" ">
This is html text.
</html>


<para>This is ifnothtml text.
</para>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>conditionals</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>



<para>This is ifnotinfo text.
</para>

<tex endspaces=" ">
This is tex text.
</tex>


<para>This is ifnottex text.
</para>
<bye></bye>
';

1;
