use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_in_line_commands'} = '*document_root C3
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {node! After punc}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |isindex:{1}
 |normalized:{node_0021-After-punc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node! After punc}
 *1 @top C25 l3 {top! After punc}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top! After punc}
  {empty_line:\\n}
  *2 @table C3 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E3]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *3 @asis l5
   *table_entry C1
    *table_term C1
     *@item C1 l6
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {item! After punc}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *4 @quotation C4 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation arg! After punc}
   *paragraph C1
    {In quotation\\n}
   *@exdent C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {exdent quotation! After punc}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
  {empty_line:\\n}
  *5 @float C5 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{1}
  |float_section:[E1]
  |float_type:{float type! After punc}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{float-label_0021-After-punc}
  |shortcaption:[E6]
   *arguments_line C2
    *block_line_arg C1
     {float type! After punc}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {float label! After punc}
   *paragraph C1
    {In float\\n}
   *6 @shortcaption C1 l16
   |EXTRA
   |float:[E5]
    *brace_command_context C1
     *paragraph C1
      {shortcaption! After punc}
   {spaces_after_close_brace:\\n}
   *@end C1 l17
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
  *7 @float C5 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E8]
  |float_number:{2}
  |float_section:[E1]
  |float_type:{float type! After punc}
  |global_command_number:{2}
  |is_target:{1}
  |normalized:{label-with-caption}
   *arguments_line C2
    *block_line_arg C1
     {float type! After punc}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {label with caption}
   *paragraph C1
    {In float with caption.\\n}
   *8 @caption C1 l21
   |EXTRA
   |float:[E7]
    *brace_command_context C1
     *paragraph C1
      {caption! After punc}
   {spaces_after_close_brace:\\n}
   *@end C1 l22
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
  *@listoffloats C1 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{float type! After punc}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {float type! After punc}
  {empty_line:\\n}
  *9 index_entry_command@cindex C1 l26
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index! After punc}
  {empty_line:\\n}
  *10 @heading C1 l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {heading! After punc}
  {empty_line:\\n}
  *11 @titlefont C1 l30
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {titlefont! After punc}
  {\\n}
  {empty_line:\\n}
  *@center C1 l32
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {center! After punc}
  {empty_line:\\n}
  *@printindex C1 l34
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
  *@contents C1 l36
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
';


$result_texis{'punctuation_in_line_commands'} = '
@node node! After punc
@top top! After punc

@table @asis
@item item! After punc
@end table

@quotation quotation arg! After punc
In quotation
@exdent exdent quotation! After punc
@end quotation

@float float type! After punc, float label! After punc
In float
@shortcaption{shortcaption! After punc}
@end float

@float float type! After punc, label with caption
In float with caption.
@caption{caption! After punc}
@end float

@listoffloats float type! After punc

@cindex index! After punc

@heading heading! After punc

@titlefont{titlefont! After punc}

@center center! After punc

@printindex cp

@contents

';


$result_texts{'punctuation_in_line_commands'} = '
top! After punc
***************

item! After punc

quotation arg! After punc
In quotation
exdent quotation! After punc

float type! After punc, float label! After punc
In float

float type! After punc, label with caption
In float with caption.



heading! After punc
===================

titlefont! After punc

center! After punc



';

$result_errors{'punctuation_in_line_commands'} = [];


$result_floats{'punctuation_in_line_commands'} = {
  'float type! After punc' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'float_number' => '1',
        'float_section' => {
          'cmdname' => 'top',
          'extra' => {}
        },
        'float_type' => 'float type! After punc',
        'normalized' => 'float-label_0021-After-punc',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        }
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
        'float_section' => {},
        'float_type' => 'float type! After punc',
        'normalized' => 'label-with-caption'
      }
    }
  ]
};
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0];
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1];
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1]{'extra'}{'float_section'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0]{'extra'}{'float_section'};


$result_indices_sort_strings{'punctuation_in_line_commands'} = {
  'cp' => [
    'index! After punc'
  ]
};



$result_converted{'plaintext'}->{'punctuation_in_line_commands'} = 'top! After punc
***************

item! After punc

     quotation arg! After punc: In quotation
exdent quotation!  After punc

In float

float type! After punc 1: shortcaption!  After punc

In float with caption.

float type! After punc 2: caption!  After punc

* Menu:

* float type! After punc 1: float label! After punc.
                                         shortcaption!  After punc
* float type! After punc 2: label with caption.
                                         caption!  After punc

heading! After punc
===================

titlefont! After punc
*********************

                          center! After punc

* Menu:

* index! After punc:                     node! After punc.     (line 23)

top! After punc

';


$result_converted{'html_text'}->{'punctuation_in_line_commands'} = '
<div class="top-level-extent" id="node_0021-After-punc">
<h1 class="top" id="top_0021-After-punc"><span>top! After punc<a class="copiable-link" href="#top_0021-After-punc"> &para;</a></span></h1>

<dl class="table">
<dt>item! After punc</dt>
</dl>

<blockquote class="quotation">
<p><b class="b">quotation arg! After punc:</b> In quotation
</p><p class="exdent">exdent quotation! After punc
</p></blockquote>

<div class="float" id="float-label_0021-After-punc">
<p>In float
</p><div class="shortcaption"><p><strong class="strong">float type! After punc 1: </strong>shortcaption! After punc</p></div></div>
<div class="float" id="label-with-caption">
<p>In float with caption.
</p><div class="caption"><p><strong class="strong">float type! After punc 2: </strong>caption! After punc</p></div></div>
<dl class="listoffloats">
<dt><a href="#float-label_0021-After-punc">float type! After punc 1</a></dt><dd class="shortcaption-in-listoffloats"><p>shortcaption! After punc</p></dd>
<dt><a href="#label-with-caption">float type! After punc 2</a></dt><dd class="caption-in-listoffloats"><p>caption! After punc</p></dd>
</dl>

<a class="index-entry-id" id="index-index_0021-After-punc"></a>

<h3 class="heading" id="heading_0021-After-punc"><span>heading! After punc<a class="copiable-link" href="#heading_0021-After-punc"> &para;</a></span></h3>

<h1 class="titlefont">titlefont! After punc</h1>

<div class="center">center! After punc
</div>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node_0021-After-punc_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index_0021-After-punc">index! After punc</a></td><td class="printindex-index-section"><a href="#node_0021-After-punc">node! After punc</a></td></tr>
</table>
</div>


</div>
';


$result_converted{'xml'}->{'punctuation_in_line_commands'} = '
<node identifier="node_0021-After-punc" spaces=" "><nodename>node! After punc</nodename></node>
<top spaces=" "><sectiontitle>top! After punc</sectiontitle>

<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">item! After punc</itemformat></item>
</tableterm></tableentry></table>

<quotation spaces=" " endspaces=" "><quotationtype>quotation arg! After punc</quotationtype>
<para>In quotation
</para><exdent spaces=" ">exdent quotation! After punc</exdent>
</quotation>

<float identifier="float-label_0021-After-punc" type="float type! After punc" number="1" spaces=" " endspaces=" "><floattype>float type! After punc</floattype><floatname spaces=" ">float label! After punc</floatname>
<para>In float
</para><shortcaption><para>shortcaption! After punc</para></shortcaption>
</float>

<float identifier="label-with-caption" type="float type! After punc" number="2" spaces=" " endspaces=" "><floattype>float type! After punc</floattype><floatname spaces=" ">label with caption</floatname>
<para>In float with caption.
</para><caption><para>caption! After punc</para></caption>
</float>

<listoffloats type="float type! After punc" spaces=" ">float type! After punc</listoffloats>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index! After punc</indexterm></cindex>

<heading spaces=" ">heading! After punc</heading>

<titlefont>titlefont! After punc</titlefont>

<center spaces=" ">center! After punc</center>

<printindex spaces=" " value="cp" line="cp"></printindex>

<contents></contents>

</top>
';


$result_converted{'latex_text'}->{'punctuation_in_line_commands'} = '
\\part*{{top! After punc}}
\\label{anchor:node_0021-After-punc}%

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item! After punc}}]
\\end{description}

\\begin{quote}
\\textbf{quotation arg! After punc:} In quotation
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
exdent quotation! After punc
\\\\
\\end{quote}

\\begin{TexinfoFloatfloattypeAfterpunc}
In float
\\caption{shortcaption! After punc}
\\label{anchor:float-label_0021-After-punc}%
\\end{TexinfoFloatfloattypeAfterpunc}

\\begin{TexinfoFloatfloattypeAfterpunc}
In float with caption.
\\caption{caption! After punc}
\\label{anchor:label-with-caption}%
\\end{TexinfoFloatfloattypeAfterpunc}

\\listof{TexinfoFloatfloattypeAfterpunc}{}

\\index[cp]{index"! After punc@index"! After punc}%

\\section*{{heading! After punc}}

{\\huge \\bfseries titlefont! After punc}

\\begin{center}
center! After punc
\\end{center}

\\printindex[cp]


';


$result_converted{'docbook'}->{'punctuation_in_line_commands'} = '<chapter label="" id="node_0021-After-punc">
<title>top! After punc</title>

<variablelist><varlistentry><term>item! After punc
</term></varlistentry></variablelist>
<blockquote><para><emphasis role="bold">quotation arg! After punc:</emphasis> In quotation
</para><simpara role="exdent">exdent quotation! After punc</simpara>
</blockquote>
<anchor id="float-label_0021-After-punc"/>
<para>In float
</para>
<anchor id="label-with-caption"/>
<para>In float with caption.
</para>

<indexterm role="cp"><primary>index! After punc</primary></indexterm>

<bridgehead renderas="sect1">heading! After punc</bridgehead>

titlefont! After punc

<simpara role="center">center! After punc</simpara>

<index role="cp"></index>


</chapter>
';

1;
