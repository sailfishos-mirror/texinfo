use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'some_at_commands_in_ref_nodes'} = '*document_root C5
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E16]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E30]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E30]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *2 @menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C14
    |EXTRA
    |node_content:{A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}}
    |normalized:{A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}
     {A }
     *3 @sc C1 l6
      *brace_container C6
       {sc }
       *4 @~ C1 l6
        *following_arg C1
         {n}
       { }
       *5 @aa C1 l6
        *brace_container
       { }
       *6 @TeX C1 l6
        *brace_container
     { node }
     *7 @" C1 l6
      *following_arg C1
       {i}
     { }
     *8 @" C1 l6
      *brace_container C1
       *9 @dotless C1 l6
        *brace_container C1
         {i}
     { }
     *10 @` C1 l6
      *brace_container C1
       *11 @= C1 l6
        *following_arg C1
         {E}
     { }
     *12 @l C1 l6
      *brace_container
     { }
     *13 @, C1 l6
      *brace_container C1
       *14 @\' C1 l6
        *following_arg C1
         {C}
     { }
     *15 @exclamdown C1 l6
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *16 @node C1 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E30]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}
  *arguments_line C1
   *line_arg C14
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A }
    *17 @sc C1 l9
     *brace_container C6
      {sc }
      *18 @~ C1 l9
       *following_arg C1
        {n}
      { }
      *19 @aa C1 l9
       *brace_container
      { }
      *20 @TeX C1 l9
       *brace_container
    { node }
    *21 @" C1 l9
     *following_arg C1
      {i}
    { }
    *22 @" C1 l9
     *brace_container C1
      *23 @dotless C1 l9
       *brace_container C1
        {i}
    { }
    *24 @` C1 l9
     *brace_container C1
      *25 @= C1 l9
       *following_arg C1
        {E}
    { }
    *26 @l C1 l9
     *brace_container
    { }
    *27 @, C1 l9
     *brace_container C1
      *28 @\' C1 l9
       *following_arg C1
        {C}
    { }
    *29 @exclamdown C1 l9
     *brace_container
 *30 @chapter C5 l10
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C14
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A }
    *31 @sc C1 l10
     *brace_container C1
      {sc}
    { node }
    *32 @" C1 l10
     *following_arg C1
      {i}
    { }
    *33 @" C1 l10
     *brace_container C1
      *34 @dotless C1 l10
       *brace_container C1
        {i}
    { }
    *35 @` C1 l10
     *brace_container C1
      *36 @= C1 l10
       *following_arg C1
        {E}
    { }
    *37 @l C1 l10
     *brace_container
    { }
    *38 @, C1 l10
     *brace_container C1
      *39 @\' C1 l10
       *following_arg C1
        {C}
    { }
    *40 @exclamdown C1 l10
     *brace_container
  {empty_line:\\n}
  *paragraph C3
   {see }
   *41 @ref C4 l12
    *brace_arg C14
    |EXTRA
    |node_content:{a @strong{strong} ref with @sc{sc}@comma{} a i trema @"i@comma{} a dotless i trema @"{@dotless{i}} @`{@=E} and exclamdown @exclamdown{}}
     {a }
     *42 @strong C1 l12
      *brace_container C1
       {strong}
     { ref with }
     *43 @sc C1 l12
      *brace_container C1
       {sc}
     *44 @comma C1 l12
      *brace_container
     { a i trema }
     *45 @" C1 l12
      *following_arg C1
       {i}
     *46 @comma C1 l12
      *brace_container
     { a dotless i trema }
     *47 @" C1 l12
      *brace_container C1
       *48 @dotless C1 l12
        *brace_container C1
         {i}
     { }
     *49 @` C1 l12
      *brace_container C1
       *50 @= C1 l12
        *following_arg C1
         {E}
     { and exclamdown }
     *51 @exclamdown C1 l12
      *brace_container
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *52 @xref C1 l14
    *brace_arg C14
    |EXTRA
    |node_content:{A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}}
    |normalized:{A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}
     {A }
     *53 @sc C1 l14
      *brace_container C6
       {sc }
       *54 @~ C1 l14
        *following_arg C1
         {n}
       { }
       *55 @aa C1 l14
        *brace_container
       { }
       *56 @TeX C1 l14
        *brace_container
     { node }
     *57 @" C1 l14
      *following_arg C1
       {i}
     { }
     *58 @" C1 l14
      *brace_container C1
       *59 @dotless C1 l14
        *brace_container C1
         {i}
     { }
     *60 @` C1 l14
      *brace_container C1
       *61 @= C1 l14
        *following_arg C1
         {E}
     { }
     *62 @l C1 l14
      *brace_container
     { }
     *63 @, C1 l14
      *brace_container C1
       *64 @\' C1 l14
        *following_arg C1
         {C}
     { }
     *65 @exclamdown C1 l14
      *brace_container
   {.\\n}
';


$result_texis{'some_at_commands_in_ref_nodes'} = '
@node Top
@top Top

@menu
* A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}::
@end menu

@node A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}
@chapter  A @sc{sc} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}

see @ref{a @strong{strong} ref with @sc{sc}@comma{} a i trema @"i@comma{} a dotless i trema @"{@dotless{i}} @`{@=E} and exclamdown @exclamdown{},,,manual}.

@xref{A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}}.
';


$result_texts{'some_at_commands_in_ref_nodes'} = '
Top
***

* A SC N~ AA TeX node i" i" E=` /l C\', !::

1 A SC node i" i" E=` /l C\', !
******************************

see a strong ref with SC, a i trema i", a dotless i trema i" E=` and exclamdown !.

A SC N~ AA TeX node i" i" E=` /l C\', !.
';

$result_sectioning{'some_at_commands_in_ref_nodes'} = {
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
                    'normalized' => 'A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
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
$result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'some_at_commands_in_ref_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'some_at_commands_in_ref_nodes'};

$result_nodes{'some_at_commands_in_ref_nodes'} = [
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
            'normalized' => 'A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'some_at_commands_in_ref_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'some_at_commands_in_ref_nodes'}[0];
$result_nodes{'some_at_commands_in_ref_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'some_at_commands_in_ref_nodes'}[0];
$result_nodes{'some_at_commands_in_ref_nodes'}[1] = $result_nodes{'some_at_commands_in_ref_nodes'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'some_at_commands_in_ref_nodes'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
    }
  }
];
$result_menus{'some_at_commands_in_ref_nodes'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'some_at_commands_in_ref_nodes'}[0];

$result_errors{'some_at_commands_in_ref_nodes'} = [];


$result_floats{'some_at_commands_in_ref_nodes'} = {};



$result_converted{'plaintext'}->{'some_at_commands_in_ref_nodes'} = 'Top
***

1 A SC node ï ï Ḕ ł Ḉ ¡
***********************

see (manual)a *strong* ref with SC, a i trema ï, a dotless i trema ï Ḕ
and exclamdown ¡.

   See A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡.
';


$result_converted{'html_text'}->{'some_at_commands_in_ref_nodes'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="Top-1"><span>Top<a class="copiable-link" href="#Top-1"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1" accesskey="1">A <small class="sc">SC</small> node &iuml; &iuml; &#274;&#768; &#322; &#262;&#807; &iexcl;</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1">
<h2 class="chapter" id="A-sc-node-i-i-E-l-C-_00a1"><span>1 A <small class="sc">SC</small> node &iuml; &iuml; &#274;&#768; &#322; &#262;&#807; &iexcl;<a class="copiable-link" href="#A-sc-node-i-i-E-l-C-_00a1"> &para;</a></span></h2>

<p>see <a data-manual="manual" href="manual.html#a-strong-ref-with-sc_002c-a-i-trema-_00ef_002c-a-dotless-i-trema-_00ef-_1e14-and-exclamdown-_00a1">(manual)a <strong class="strong">strong</strong> ref with <small class="sc">SC</small>, a i trema &iuml;, a dotless i trema &iuml; &#274;&#768; and exclamdown &iexcl;</a>.
</p>
<p>See <a class="xref" href="#A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1">A <small class="sc">SC</small> node &iuml; &iuml; &#274;&#768; &#322; &#262;&#807; &iexcl;</a>.
</p></div>
</div>
';


$result_converted{'xml'}->{'some_at_commands_in_ref_nodes'} = '
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">A <sc>sc <accent type="tilde" bracketed="off">n</accent> &aring; &tex;</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</nodenext></node>
<top spaces=" "><sectiontitle>Top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>A <sc>sc <accent type="tilde" bracketed="off">n</accent> &aring; &tex;</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1" spaces=" "><nodename>A <sc>sc <accent type="tilde" bracketed="off">n</accent> &aring; &tex;</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces="  "><sectiontitle>A <sc>sc</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</sectiontitle>

<para>see <ref label="a-strong-ref-with-sc_002c-a-i-trema-_00ef_002c-a-dotless-i-trema-_00ef-_1e14-and-exclamdown-_00a1" manual="manual"><xrefnodename>a <strong>strong</strong> ref with <sc>sc</sc>&comma; a i trema <accent type="uml" bracketed="off">i</accent>&comma; a dotless i trema <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> and exclamdown &iexcl;</xrefnodename><xrefinfofile>manual</xrefinfofile></ref>.
</para>
<para><xref label="A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1"><xrefnodename>A <sc>sc <accent type="tilde" bracketed="off">n</accent> &aring; &tex;</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</xrefnodename></xref>.
</para></chapter>
';


$result_converted{'docbook'}->{'some_at_commands_in_ref_nodes'} = '<chapter label="1" id="A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1">
<title>A SC node &#239; &#239; &#274;&#768; &#322; &#262;&#807; &#161;</title>

<para>see &#8220;a <emphasis role="bold">strong</emphasis> ref with SC&#44; a i trema &#239;&#44; a dotless i trema &#239; &#274;&#768; and exclamdown &#161;&#8221; in <filename>manual</filename>.
</para>
<para>See <link linkend="A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1">A SC &#209; &#197; &tex; node &#239; &#239; &#274;&#768; &#322; &#262;&#807; &#161;</link>.
</para></chapter>
';


$result_converted{'latex_text'}->{'some_at_commands_in_ref_nodes'} = '
\\label{anchor:Top}%
\\chapter{{A \\textsc{sc} node \\"{i} \\"{\\i{}} \\`{\\={E}} \\l{} \\c{\\\'{C}} \\textexclamdown{}}}
\\label{anchor:A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}%

see Section ``a \\textbf{strong} ref with \\textsc{sc}, a i trema \\"{i}, a dotless i trema \\"{\\i{}} \\`{\\={E}} and exclamdown \\textexclamdown{}\'\' in \\texttt{manual}.

See \\hyperref[anchor:A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1]{\\chaptername~\\ref*{anchor:A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1} [A \\textsc{sc \\~{n} \\aa{} \\TeX{}} node \\"{i} \\"{\\i{}} \\`{\\={E}} \\l{} \\c{\\\'{C}} \\textexclamdown{}], page~\\pageref*{anchor:A-sc-_00f1-_00e5-TeX-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}}.
';


$result_converted{'info'}->{'some_at_commands_in_ref_nodes'} = 'This is , produced from .


File: ,  Node: Top,  Next: A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡,  Up: (dir)

Top
***

* Menu:

* A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡::


File: ,  Node: A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡,  Prev: Top,  Up: Top

1 A SC node ï ï Ḕ ł Ḉ ¡
***********************

see *note (manual)a *strong* ref with SC, a i trema ï, a dotless i trema
ï Ḕ and exclamdown ¡::.

   *Note A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡::.


Tag Table:
Node: Top27
Node: A SC Ñ Å TeX node ï ï Ḕ ł Ḉ ¡152

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
