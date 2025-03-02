use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'weird_accents'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@documentencoding C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C11 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C2
   *4 @= C1 l9
    *brace_container C1
     *5 @~ C1 l9
      *brace_container C1
       *6 @dotless C1 l9
        *brace_container C1
         {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *7 @= C1 l11
    *brace_container C1
     *8 @, C1 l11
      *brace_container C1
       *9 @~ C1 l11
        *brace_container C1
         {n}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *10 @= C1 l13
    *brace_container C1
     *11 @ubaraccent C1 l13
      *brace_container C1
       {a}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *12 @^ C1 l15
    *brace_container C1
     *13 @udotaccent C1 l15
      *brace_container C1
       *14 @` C1 l15
        *following_arg C1
         {r}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *15 @= C1 l17
    *brace_container C1
     *16 @\' C1 l17
      *brace_container C1
       *17 @` C1 l17
        *brace_container C1
         {r}
   {\\n}
';


$result_texis{'weird_accents'} = '@documentencoding ISO-8859-1

@node Top
@top top

@node chap
@chapter Chapter

@={@~{@dotless{i}}}

@={@,{@~{n}}}

@={@ubaraccent{a}}

@^{@udotaccent{@`r}}

@={@\'{@`{r}}}
';


$result_texts{'weird_accents'} = '
top
***

1 Chapter
*********

i~=

n~,=

a_=

.r`^

r`\'=
';

$result_sectioning{'weird_accents'} = {
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
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'weird_accents'};

$result_nodes{'weird_accents'} = [
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
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
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
$result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'weird_accents'}[0];
$result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'weird_accents'}[0];
$result_nodes{'weird_accents'}[1] = $result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'weird_accents'} = [
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

$result_errors{'weird_accents'} = [];


$result_floats{'weird_accents'} = {};



$result_converted{'plaintext'}->{'weird_accents'} = 'top
***

1 Chapter
*********

i~=

   ñ,=

   a_=

   .r`^

   r`\'=
';


$result_converted{'html_text'}->{'weird_accents'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>&#297;&#772;
</p>
<p>&ntilde;&#807;&#772;
</p>
<p>a&#818;&#772;
</p>
<p>r&#768;&#803;&#770;
</p>
<p>r&#768;&#769;&#772;
</p></div>
</div>
';


$result_converted{'xml'}->{'weird_accents'} = '<documentencoding encoding="ISO-8859-1" spaces=" ">ISO-8859-1</documentencoding>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para><accent type="macr"><accent type="tilde"><dotless>i</dotless></accent></accent>
</para>
<para><accent type="macr"><accent type="cedil"><accent type="tilde">n</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="ubaraccent">a</accent></accent>
</para>
<para><accent type="circ"><accent type="udotaccent"><accent type="grave" bracketed="off">r</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="acute"><accent type="grave">r</accent></accent></accent>
</para></chapter>
';


$result_converted{'docbook'}->{'weird_accents'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para>&#297;&#772;
</para>
<para>&#241;&#807;&#772;
</para>
<para>a&#818;&#772;
</para>
<para>r&#768;&#803;&#770;
</para>
<para>r&#768;&#769;&#772;
</para></chapter>
';


$result_converted{'latex_text'}->{'weird_accents'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\={\\~{\\i{}}}

\\={\\c{\\~{n}}}

\\={\\b{a}}

\\^{\\d{\\`{r}}}

\\={\\\'{\\`{r}}}
';

1;
