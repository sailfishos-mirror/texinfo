use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sorted_subentries'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E28]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C1 l4 {chapter one}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E27|prev->E0|up->E0]
 |normalized:{chapter-one}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter one}
 *3 @chapter C27 l5 {one}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E28|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E28|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {one}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
  |subentry:[E5]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {aa}
  *5 @subentry C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E4]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bb}
  *6 index_entry_command@cindex C1 l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
  |subentry:[E7]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {ab}
  *7 @subentry C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E6]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cc}
  *8 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
  |subentry:[E9]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {aa}
  *9 @subentry C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E8]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {dd}
  *10 index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
  |subentry:[E11]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {bb}
  *11 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E10]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cc}
  {empty_line:\\n}
  *12 index_entry_command@cindex C1 l12
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,5}
  |subentry:[E13]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *13 @subentry C1 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E14]
  |subentry_level:{1}
  |subentry_parent:[E12]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {jjj}
  *14 @subentry C1 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E13]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {lll}
  *15 index_entry_command@cindex C1 l13
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,6}
  |subentry:[E16]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *16 @subentry C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E15]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {jjj}
  *17 index_entry_command@cindex C1 l14
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {hhh jjj}
  *18 index_entry_command@cindex C1 l15
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,8}
  |subentry:[E19]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *19 @subentry C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E18]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {k}
  *20 index_entry_command@cindex C1 l16
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,9}
  |subentry:[E21]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *21 @subentry C1 l16
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E20]
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ \\n}
  *22 index_entry_command@cindex C1 l17
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {hhh}
  *23 index_entry_command@cindex C1 l18
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,11}
  |subentry:[E24]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *24 @subentry C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E25]
  |subentry_level:{1}
  |subentry_parent:[E23]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {jjj}
  *25 @subentry C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E26]
  |subentry_level:{2}
  |subentry_parent:[E24]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {lll}
  *26 @subentry C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{3}
  |subentry_parent:[E25]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ppp}
  {empty_line:\\n}
 *27 @node C1 l20 {chapter second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E28]
 |associated_title_command:[E28]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chapter-second}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter second}
 *28 @chapter C23 l21 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E27]
 |associated_node:[E27]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  *29 index_entry_command@cindex C1 l22
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,12}
  |subentry:[E30]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *30 @subentry C1 l22
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E31]
  |subentry_level:{1}
  |subentry_parent:[E29]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {jjj}
  *31 @subentry C1 l22
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E30]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {lll}
  *32 index_entry_command@cindex C1 l23
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {hhh}
  *33 index_entry_command@cindex C1 l24
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,14}
  |subentry:[E35]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    *34 @samp C1 l24
     *brace_container C1
      {hhh}
  *35 @subentry C1 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E33]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {jjj}
  *36 index_entry_command@cindex C1 l25
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,15}
  |subentry:[E38]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    *37 @kbd C1 l25
     *brace_container C1
      {hhh}
  *38 @subentry C1 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E40]
  |subentry_level:{1}
  |subentry_parent:[E36]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    *39 @sc C1 l25
     *brace_container C1
      {jjj}
  *40 @subentry C1 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E38]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *41 @email C2 l25
     *brace_arg C1
      {jjj}
     *brace_arg C1
      {mymail}
  *42 index_entry_command@cindex C1 l26
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E43]
   *line_arg
  *43 @subentry C1 l26
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E42]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aa}
  *44 index_entry_command@cindex C1 l27
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,16}
  |subentry:[E45]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *45 @subentry C1 l27
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E46]
  |subentry_level:{1}
  |subentry_parent:[E44]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {jjj}
  *46 @subentry C1 l27
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |sortas:{A}
  |subentry_level:{2}
  |subentry_parent:[E45]
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {lll}
    {spaces_at_end: }
    *47 @sortas C1 l27
     *brace_arg C1
      {A}
  *48 index_entry_command@cindex C1 l28
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,17}
  |subentry:[E49]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *49 @subentry C1 l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E50]
  |subentry_level:{1}
  |subentry_parent:[E48]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {k}
  *50 @subentry C1 l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E49]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {nnn}
  *51 index_entry_command@cindex C1 l29
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E27]
  |index_entry:I{cp,18}
  |subentry:[E52]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {hhh}
  *52 @subentry C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E53]
  |subentry_level:{1}
  |subentry_parent:[E51]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {l}
  *53 @subentry C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E52]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {third}
  {empty_line:\\n}
  *@printindex C1 l31
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
';


$result_texis{'sorted_subentries'} = '@node Top
@top

@node chapter one
@chapter one

@cindex aa @subentry bb
@cindex ab @subentry cc
@cindex aa @subentry dd
@cindex bb @subentry cc

@cindex hhh @subentry jjj @subentry lll
@cindex hhh @subentry jjj
@cindex hhh jjj
@cindex hhh @subentry k
@cindex hhh @subentry 
@cindex hhh 
@cindex hhh @subentry jjj @subentry lll @subentry ppp

@node chapter second
@chapter second
@cindex hhh @subentry jjj @subentry lll
@cindex hhh 
@cindex @samp{hhh} @subentry jjj
@cindex @kbd{hhh} @subentry @sc{jjj} @subentry @email{jjj,mymail}
@cindex @subentry aa
@cindex hhh @subentry jjj @subentry lll @sortas{A}
@cindex hhh @subentry k @subentry nnn
@cindex hhh @subentry l @subentry third

@printindex cp
';


$result_texts{'sorted_subentries'} = '
1 one
*****



2 second
********

';

$result_errors{'sorted_subentries'} = [
  {
    'error_line' => 'warning: @subentry missing argument
',
    'line_nr' => 16,
    'text' => '@subentry missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'no more than two levels of index subentry are allowed
',
    'line_nr' => 18,
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @cindex missing argument
',
    'line_nr' => 26,
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'line_nr' => 16,
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'sorted_subentries'} = 'cp:
 aa, bb
 aa, dd
 ab, cc
 bb, cc
 hhh
 hhh
 hhh, 
 hhh, jjj
 hhh, jjj
 hhh, jjj, A
 hhh, jjj, lll
 hhh, jjj, lll
 hhh, jjj, lll, ppp
 hhh, JJJ, mymail
 hhh, k
 hhh, k, nnn
 hhh, l, third
 hhh jjj
';


$result_converted{'info'}->{'sorted_subentries'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter one,  Up: (dir)

* Menu:

* chapter one::
* chapter second::


File: ,  Node: chapter one,  Next: chapter second,  Prev: Top,  Up: Top

1 one
*****


File: ,  Node: chapter second,  Prev: chapter one,  Up: Top

2 second
********

 [index ]
* Menu:

* aa, bb:                                chapter one.           (line 5)
* aa, dd:                                chapter one.           (line 5)
* ab, cc:                                chapter one.           (line 5)
* bb, cc:                                chapter one.           (line 5)
* hhh:                                   chapter one.           (line 5)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 5)
* hhh, jjj:                              chapter one.           (line 5)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 5)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 5)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 5)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh, l, third:                         chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 5)


Tag Table:
Node: Top27
Node: chapter one126
Node: chapter second214

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'sorted_subentries'} = '1 one
*****

2 second
********

* Menu:

* aa, bb:                                chapter one.           (line 2)
* aa, dd:                                chapter one.           (line 2)
* ab, cc:                                chapter one.           (line 2)
* bb, cc:                                chapter one.           (line 2)
* hhh:                                   chapter one.           (line 2)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 2)
* hhh, jjj:                              chapter one.           (line 2)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 2)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 2)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 2)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh, l, third:                         chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 2)

';


$result_converted{'html_text'}->{'sorted_subentries'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-one" accesskey="1">one</a></li>
<li><a href="#chapter-second" accesskey="2">second</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-one">
<div class="nav-panel">
<p>
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="one"><span>1 one<a class="copiable-link" href="#one"> &para;</a></span></h2>

<a class="index-entry-id" id="index-aa-bb"></a>
<a class="index-entry-id" id="index-ab-cc"></a>
<a class="index-entry-id" id="index-aa-dd"></a>
<a class="index-entry-id" id="index-bb-cc"></a>

<a class="index-entry-id" id="index-hhh-jjj-lll"></a>
<a class="index-entry-id" id="index-hhh-jjj"></a>
<a class="index-entry-id" id="index-hhh-jjj-1"></a>
<a class="index-entry-id" id="index-hhh-k"></a>
<a class="index-entry-id" id="index-hhh-"></a>
<a class="index-entry-id" id="index-hhh"></a>
<a class="index-entry-id" id="index-hhh-jjj-lll-ppp"></a>

<hr>
</div>
<div class="chapter-level-extent" id="chapter-second">
<div class="nav-panel">
<p>
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="second"><span>2 second<a class="copiable-link" href="#second"> &para;</a></span></h2>
<a class="index-entry-id" id="index-hhh-jjj-lll-1"></a>
<a class="index-entry-id" id="index-hhh-1"></a>
<a class="index-entry-id" id="index-hhh-jjj-2"></a>
<a class="index-entry-id" id="index-hhh-jjj-jjj"></a>
<a class="index-entry-id" id="index-hhh-jjj-lll-2"></a>
<a class="index-entry-id" id="index-hhh-k-nnn"></a>
<a class="index-entry-id" id="index-hhh-l-third"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-second_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-H"><b>H</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aa</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aa-bb">bb</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aa-dd">dd</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry">ab</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-ab-cc">cc</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry">bb</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-bb-cc">cc</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-H">H</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh">hhh</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh-1">hhh</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-"></a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-jjj">jjj</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-jjj-2">jjj</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-2">lll</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll">lll</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-1">lll</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-ppp">lll, ppp</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-jjj"><a class="email" href="mailto:jjj">mymail</a></a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-k">k</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-k-nnn">nnn</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1">l</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-l-third">third</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh-jjj-1">hhh jjj</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-second_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-H"><b>H</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'sorted_subentries'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter one</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-one" spaces=" "><nodename>chapter one</nodename><nodenext automatic="on">chapter second</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>one</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aa</indexterm></cindex> <subentry spaces=" ">bb</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">ab</indexterm></cindex> <subentry spaces=" ">cc</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aa</indexterm></cindex> <subentry spaces=" ">dd</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">bb</indexterm></cindex> <subentry spaces=" ">cc</subentry>

<cindex index="cp" spaces=" "><indexterm index="cp" number="5">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">hhh</indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="7">hhh jjj</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="8">hhh</indexterm></cindex> <subentry spaces=" ">k</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="9">hhh</indexterm></cindex> <subentry> </subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="10">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="11">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll </subentry><subentry spaces=" ">ppp</subentry>

</chapter>
<node identifier="chapter-second" spaces=" "><nodename>chapter second</nodename><nodeprev automatic="on">chapter one</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>second</sectiontitle>
<cindex index="cp" spaces=" "><indexterm index="cp" number="12">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="13">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="14"><samp>hhh</samp></indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="15"><kbd>hhh</kbd></indexterm></cindex> <subentry spaces=" "><sc>jjj</sc> </subentry><subentry spaces=" "><email><emailaddress>jjj</emailaddress><emailname>mymail</emailname></email></subentry>
<cindex spaces=" "></cindex><subentry spaces=" ">aa</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="16">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll <sortas>A</sortas></subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="17">hhh</indexterm></cindex> <subentry spaces=" ">k </subentry><subentry spaces=" ">nnn</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="18">hhh</indexterm></cindex> <subentry spaces=" ">l </subentry><subentry spaces=" ">third</subentry>

<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';

1;
