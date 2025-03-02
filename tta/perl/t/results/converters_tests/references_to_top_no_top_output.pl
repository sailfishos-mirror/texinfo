use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'references_to_top_no_top_output'} = '*document_root C5
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C1
    {text_before_beginning:\\n}
  *preamble_before_content C4
   *@setfilename C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{references_to_top_no_top_output.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {references_to_top_no_top_output.info}
   {empty_line:\\n}
   *0 @copying C3 l4
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C3
     {Copying\\n}
     *1 @anchor C1 l6
     |EXTRA
     |is_target:{1}
     |normalized:{a-in-copying}
      *brace_arg C1
      |EXTRA
      |element_region:{copying}
       {a in copying}
     {spaces_after_close_brace:\\n}
    *@end C1 l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *2 @node C1 l9 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E13]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C19 l10 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E14]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E14]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C1
   {Begin Top\\n}
  {empty_line:\\n}
  *4 @anchor C1 l14
  |EXTRA
  |is_target:{1}
  |normalized:{a-in-top}
   *brace_arg C1
    {a in top}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *paragraph C3
   {Paragraph }
   *5 @anchor C1 l16
   |EXTRA
   |is_target:{1}
   |normalized:{a-in-paragraph-in-top}
    *brace_arg C1
     {a in paragraph in top}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *6 @footnote C1 l18
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C2
      {in footnote }
      *7 @anchor C1 l18
      |EXTRA
      |is_target:{1}
      |normalized:{a-in-footnote}
       *brace_arg C1
        {a in footnote}
   {\\n}
  {empty_line:\\n}
  *@insertcopying C1 l20
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *8 @float C5 l22
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E10]
  |float_number:{1}
  |float_section:[E3]
  |float_type:{list}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{My-Flist}
   *arguments_line C2
    *block_line_arg C1
     {list}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {My Flist}
   *paragraph C3
    {In Flist\\n}
    *9 @anchor C1 l24
    |EXTRA
    |is_target:{1}
    |normalized:{a-in-float}
     *brace_arg C1
      {a in float}
    {.\\n}
   *10 @caption C1 l25
   |EXTRA
   |float:[E8]
    *brace_command_context C1
     *paragraph C2
      {Caption Flist. }
      *11 @anchor C1 l25
      |EXTRA
      |is_target:{1}
      |normalized:{a-in-caption}
       *brace_arg C1
        {a in caption}
   {spaces_after_close_brace:\\n}
   *@end C1 l26
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
  *12 index_entry_command@cindex C1 l28
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index in Top}
  {empty_line:\\n}
  *paragraph C1
   {End of Top\\n}
  {empty_line:\\n}
 *13 @node C1 l32 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E2|up->E2]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *14 @chapter C11 l33 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C12
   *15 @pxref C1 l35
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {.\\n}
   *16 @pxref C1 l36
    *brace_arg C1
    |EXTRA
    |node_content:{a in top}
    |normalized:{a-in-top}
     {a in top}
   {\\n}
   *17 @pxref C1 l37
    *brace_arg C1
    |EXTRA
    |node_content:{a in footnote}
    |normalized:{a-in-footnote}
     {a in footnote}
   {\\n}
   *18 @pxref C1 l38
    *brace_arg C1
    |EXTRA
    |node_content:{a in float}
    |normalized:{a-in-float}
     {a in float}
   {\\n}
   *19 @pxref C1 l39
    *brace_arg C1
    |EXTRA
    |node_content:{a in caption}
    |normalized:{a-in-caption}
     {a in caption}
   {\\n}
   *20 @pxref C1 l40
    *brace_arg C1
    |EXTRA
    |node_content:{a in paragraph in top}
    |normalized:{a-in-paragraph-in-top}
     {a in paragraph in top}
   {\\n}
  {empty_line:\\n}
  *21 index_entry_command@cindex C1 l42
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap index}
  {empty_line:\\n}
  *@printindex C1 l44
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *22 @float C5 l46
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E23]
  |float_number:{1.1}
  |float_section:[E14]
  |float_type:{list}
  |global_command_number:{2}
  |is_target:{1}
  |normalized:{Main-Flist}
   *arguments_line C2
    *block_line_arg C1
     {list}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {Main Flist}
   *paragraph C1
    {In Main\\n}
   *23 @caption C1 l48
   |EXTRA
   |float:[E22]
    *brace_command_context C1
     *paragraph C1
      {Caption Main}
   {spaces_after_close_brace:\\n}
   *@end C1 l49
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
  *@listoffloats C1 l51
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{list}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {list}
';


$result_texis{'references_to_top_no_top_output'} = '
@setfilename references_to_top_no_top_output.info

@copying
Copying
@anchor{a in copying}
@end copying

@node Top
@top top

Begin Top

@anchor{a in top}

Paragraph @anchor{a in paragraph in top}.

@footnote{in footnote @anchor{a in footnote}}

@insertcopying

@float list, My Flist
In Flist
@anchor{a in float}.
@caption{Caption Flist. @anchor{a in caption}}
@end float

@cindex index in Top

End of Top

@node chapter
@chapter Chap

@pxref{a in copying}.
@pxref{a in top}
@pxref{a in footnote}
@pxref{a in float}
@pxref{a in caption}
@pxref{a in paragraph in top}

@cindex chap index

@printindex cp

@float list, Main Flist
In Main
@caption{Caption Main}
@end float

@listoffloats list
';


$result_texts{'references_to_top_no_top_output'} = '

top
***

Begin Top


Paragraph .




list, My Flist
In Flist
.


End of Top

1 Chap
******

a in copying.
a in top
a in footnote
a in float
a in caption
a in paragraph in top



list, Main Flist
In Main

';

$result_errors{'references_to_top_no_top_output'} = [];


$result_floats{'references_to_top_no_top_output'} = {
  'list' => [
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
        'float_section' => {
          'cmdname' => 'top',
          'extra' => {}
        },
        'float_type' => 'list',
        'normalized' => 'My-Flist'
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
        'float_number' => '1.1',
        'float_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'float_type' => 'list',
        'normalized' => 'Main-Flist'
      }
    }
  ]
};
$result_floats{'references_to_top_no_top_output'}{'list'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'references_to_top_no_top_output'}{'list'}[0];
$result_floats{'references_to_top_no_top_output'}{'list'}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'references_to_top_no_top_output'}{'list'}[1];


$result_indices_sort_strings{'references_to_top_no_top_output'} = {
  'cp' => [
    'chap index',
    'index in Top'
  ]
};



$result_converted{'html_text'}->{'references_to_top_no_top_output'} = '

<a class="node" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chapter" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="top"></a><ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
[<a href="#chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<p>see <a class="pxref" href="#a-in-copying">a in copying</a>.
see <a class="pxref" href="#a-in-top">a in top</a>
see <a class="pxref" href="#a-in-footnote">a in footnote</a>
see <a class="pxref" href="#a-in-float">a in float</a>
see <a class="pxref" href="#a-in-caption">a in caption</a>
see <a class="pxref" href="#a-in-paragraph-in-top">a in paragraph in top</a>
</p>
<a class="index-entry-id" id="index-chap-index"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chap-index">chap index</a></td><td class="printindex-index-section"><a href="#chapter">chapter</a></td></tr>
</table>
</div>

<div class="float" id="Main-Flist">
<p>In Main
</p><div class="caption"><p><strong class="strong">list 1.1: </strong>Caption Main</p></div></div>
<dl class="listoffloats">
<dt><a href="#My-Flist">list 1</a></dt><dd class="caption-in-listoffloats"><p>Caption Flist. </p></dd>
<dt><a href="#Main-Flist">list 1.1</a></dt><dd class="caption-in-listoffloats"><p>Caption Main</p></dd>
</dl>
</div>
';

1;
