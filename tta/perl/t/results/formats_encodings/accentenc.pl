use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'accentenc'} = '*document_root C3
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
 *0 @node C1 l3 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
 *1 @top C77 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
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
    {top}
  {empty_line:\\n}
  *paragraph C5
   {should be e`: }
   *2 @` C1 l6
    *brace_container C1
     {e}
   { }
   *3 @` C1 l6
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e\': }
   *4 @\' C1 l8
    *brace_container C1
     {e}
   { }
   *5 @\' C1 l8
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e^: }
   *6 @^ C1 l10
    *brace_container C1
     {e}
   { }
   *7 @^ C1 l10
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be u": }
   *8 @" C1 l12
    *brace_container C1
     {u}
   { }
   *9 @" C1 l12
    *following_arg C1
     {u}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be i`: }
   *10 @` C1 l14
    *brace_container C1
     {i}
   { }
   *11 @` C1 l14
    *following_arg C1
     {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be i\': }
   *12 @\' C1 l16
    *brace_container C1
     {i}
   { }
   *13 @\' C1 l16
    *following_arg C1
     {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be i^: }
   *14 @^ C1 l18
    *brace_container C1
     {i}
   { }
   *15 @^ C1 l18
    *following_arg C1
     {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be u": }
   *16 @" C1 l20
    *brace_container C1
     {u}
   { }
   *17 @" C1 l20
    *following_arg C1
     {u}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be c,: }
   *18 @, C1 l22
    *brace_container C1
     {c}
   { }
   *19 @, C1 l22
    *following_arg C1
     {c}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be n~: }
   *20 @~ C1 l24
    *brace_container C1
     {n}
   { }
   *21 @~ C1 l24
    *following_arg C1
     {n}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e=: }
   *22 @= C1 l26
    *brace_container C1
     {e}
   { }
   *23 @= C1 l26
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C7
   {should be e}
   *24 @w C1 l28
    *brace_container C1
     {\'}
   {\': }
   *25 @H C1 l28
    *brace_container C1
     {e}
   { }
   *26 @H C1 l28
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e.: }
   *27 @dotaccent C1 l30
    *brace_container C1
     {e}
   { }
   *28 @dotaccent C1 l30
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e*: }
   *29 @ringaccent C1 l32
    *brace_container C1
     {e}
   { }
   *30 @ringaccent C1 l32
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be ee[: }
   *31 @tieaccent C1 l34
    *brace_container C1
     {ee}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e(: }
   *32 @u C1 l36
    *brace_container C1
     {e}
   { }
   *33 @u C1 l36
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e_: }
   *34 @ubaraccent C1 l38
    *brace_container C1
     {e}
   { }
   *35 @ubaraccent C1 l38
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be .e: }
   *36 @udotaccent C1 l40
    *brace_container C1
     {e}
   { }
   *37 @udotaccent C1 l40
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e<: }
   *38 @v C1 l42
    *brace_container C1
     {e}
   { }
   *39 @v C1 l42
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be a; : }
   *40 @ogonek C1 l44
    *brace_container C1
     {a}
   { }
   *41 @ogonek C1 l44
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {a}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {should be e; : }
   *42 @ogonek C1 l46
    *brace_container C1
     {e}
   { }
   *43 @ogonek C1 l46
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {upside down: }
   *44 @questiondown C1 l48
    *brace_container
   { }
   *45 @exclamdown C1 l48
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {A-with-circle: }
   *46 @aa C1 l50
    *brace_container
   {,}
   *47 @AA C1 l50
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C9
   {AE, OE ligatures: }
   *48 @ae C1 l52
    *brace_container
   { }
   *49 @AE C1 l52
    *brace_container
   { }
   *50 @oe C1 l52
    *brace_container
   { }
   *51 @OE C1 l52
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {dotless i, j: }
   *52 @dotless C1 l54
    *brace_container C1
     {i}
   { }
   *53 @dotless C1 l54
    *brace_container C1
     {j}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {Polish suppressed-L: }
   *54 @l C1 l56
    *brace_container
   { }
   *55 @L C1 l56
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {O-with-slash: }
   *56 @o C1 l58
    *brace_container
   { }
   *57 @O C1 l58
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {es-zet or sharp S: }
   *58 @ss C1 l60
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {pounds sterling: }
   *59 @pounds C1 l62
    *brace_container
   {\\n}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: arg is command -- @dotless{i} is special-cased for HTML\\n}
  *paragraph C3
   {should be dotless i`: }
   *60 @` C1 l65
    *brace_container C1
     *61 @dotless C1 l65
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless i\': }
   *62 @\' C1 l67
    *brace_container C1
     *63 @dotless C1 l67
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless i^: }
   *64 @^ C1 l69
    *brace_container C1
     *65 @dotless C1 l69
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless i": }
   *66 @" C1 l71
    *brace_container C1
     *67 @dotless C1 l71
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: arg is command -- @dotless{j}\\n}
  *paragraph C3
   {should be dotless j`: }
   *68 @` C1 l74
    *brace_container C1
     *69 @dotless C1 l74
      *brace_container C1
       {j}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless j\': }
   *70 @\' C1 l76
    *brace_container C1
     *71 @dotless C1 l76
      *brace_container C1
       {j}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless j^: }
   *72 @^ C1 l78
    *brace_container C1
     *73 @dotless C1 l78
      *brace_container C1
       {j}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {should be dotless j": }
   *74 @" C1 l80
    *brace_container C1
     *75 @dotless C1 l80
      *brace_container C1
       {j}
   {\\n}
';


$result_texis{'accentenc'} = '@documentencoding ISO-8859-1

@node first
@top top

should be e`: @`{e} @`e

should be e\': @\'{e} @\'e

should be e^: @^{e} @^e

should be u": @"{u} @"u

should be i`: @`{i} @`i

should be i\': @\'{i} @\'i

should be i^: @^{i} @^i

should be u": @"{u} @"u

should be c,: @,{c} @,c

should be n~: @~{n} @~n

should be e=: @={e} @=e

should be e@w{\'}\': @H{e} @H e

should be e.: @dotaccent{e} @dotaccent e

should be e*: @ringaccent{e} @ringaccent e

should be ee[: @tieaccent{ee}

should be e(: @u{e} @u e

should be e_: @ubaraccent{e} @ubaraccent e

should be .e: @udotaccent{e} @udotaccent e

should be e<: @v{e} @v e

should be a; : @ogonek{a} @ogonek a

should be e; : @ogonek{e} @ogonek e

upside down: @questiondown{} @exclamdown{}

A-with-circle: @aa{},@AA{}

AE, OE ligatures: @ae{} @AE{} @oe{} @OE{}

dotless i, j: @dotless{i} @dotless{j}

Polish suppressed-L: @l{} @L{}

O-with-slash: @o{} @O{}

es-zet or sharp S: @ss{}

pounds sterling: @pounds{}

@c arg is command -- @dotless{i} is special-cased for HTML
should be dotless i`: @`{@dotless{i}}

should be dotless i\': @\'{@dotless{i}}

should be dotless i^: @^{@dotless{i}}

should be dotless i": @"{@dotless{i}}

@c arg is command -- @dotless{j}
should be dotless j`: @`{@dotless{j}}

should be dotless j\': @\'{@dotless{j}}

should be dotless j^: @^{@dotless{j}}

should be dotless j": @"{@dotless{j}}
';


$result_texts{'accentenc'} = '
top
***

should be e`: e` e`

should be e\': e\' e\'

should be e^: e^ e^

should be u": u" u"

should be i`: i` i`

should be i\': i\' i\'

should be i^: i^ i^

should be u": u" u"

should be c,: c, c,

should be n~: n~ n~

should be e=: e= e=

should be e\'\': e\'\' e\'\'

should be e.: e. e.

should be e*: e* e*

should be ee[: ee[

should be e(: e( e(

should be e_: e_ e_

should be .e: .e .e

should be e<: e< e<

should be a; : a; a;

should be e; : e; e;

upside down: ? !

A-with-circle: aa,AA

AE, OE ligatures: ae AE oe OE

dotless i, j: i j

Polish suppressed-L: /l /L

O-with-slash: /o /O

es-zet or sharp S: ss

pounds sterling: #

should be dotless i`: i`

should be dotless i\': i\'

should be dotless i^: i^

should be dotless i": i"

should be dotless j`: j`

should be dotless j\': j\'

should be dotless j^: j^

should be dotless j": j"
';

$result_errors{'accentenc'} = [];



$result_converted{'plaintext'}->{'accentenc'} = 'top
***

should be e\': è è

   should be e\': é é

   should be e^: ê ê

   should be u": ü ü

   should be i\': ì ì

   should be i\': í í

   should be i^: î î

   should be u": ü ü

   should be c,: ç ç

   should be n~: ñ ñ

   should be e=: e= e=

   should be e\'\': e\'\' e\'\'

   should be e.: e. e.

   should be e*: e* e*

   should be ee[: ee[

   should be e(: e( e(

   should be e_: e_ e_

   should be .e: .e .e

   should be e<: e< e<

   should be a; : a; a;

   should be e; : e; e;

   upside down: ¿  ¡

   A-with-circle: å,Å

   AE, OE ligatures: æ Æ oe OE

   dotless i, j: i j

   Polish suppressed-L: /l /L

   O-with-slash: ø Ø

   es-zet or sharp S: ß

   pounds sterling: £

   should be dotless i\': ì

   should be dotless i\': í

   should be dotless i^: î

   should be dotless i": ï

   should be dotless j\': j`

   should be dotless j\': j\'

   should be dotless j^: j^

   should be dotless j": j"
';


$result_converted{'html_text'}->{'accentenc'} = '
<div class="top-level-extent" id="first">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>should be e&lsquo;: &egrave; &egrave;
</p>
<p>should be e&rsquo;: &eacute; &eacute;
</p>
<p>should be e^: &ecirc; &ecirc;
</p>
<p>should be u&quot;: &uuml; &uuml;
</p>
<p>should be i&lsquo;: &igrave; &igrave;
</p>
<p>should be i&rsquo;: &iacute; &iacute;
</p>
<p>should be i^: &icirc; &icirc;
</p>
<p>should be u&quot;: &uuml; &uuml;
</p>
<p>should be c,: &ccedil; &ccedil;
</p>
<p>should be n~: &ntilde; &ntilde;
</p>
<p>should be e=: &#275; &#275;
</p>
<p>should be e&rsquo;<!-- /@w -->&rsquo;: e&#779; e&#779;
</p>
<p>should be e.: &#279; &#279;
</p>
<p>should be e*: e&#778; e&#778;
</p>
<p>should be ee[: e&#865;e
</p>
<p>should be e(: &#277; &#277;
</p>
<p>should be e_: e&#818; e&#818;
</p>
<p>should be .e: &#7865; &#7865;
</p>
<p>should be e&lt;: &#283; &#283;
</p>
<p>should be a; : &#261; &#261;
</p>
<p>should be e; : &#281; &#281;
</p>
<p>upside down: &iquest; &iexcl;
</p>
<p>A-with-circle: &aring;,&Aring;
</p>
<p>AE, OE ligatures: &aelig; &AElig; &oelig; &OElig;
</p>
<p>dotless i, j: &inodot; &#567;
</p>
<p>Polish suppressed-L: &#322; &#321;
</p>
<p>O-with-slash: &oslash; &Oslash;
</p>
<p>es-zet or sharp S: &szlig;
</p>
<p>pounds sterling: &pound;
</p>
<p>should be dotless i&lsquo;: &igrave;
</p>
<p>should be dotless i&rsquo;: &iacute;
</p>
<p>should be dotless i^: &icirc;
</p>
<p>should be dotless i&quot;: &iuml;
</p>
<p>should be dotless j&lsquo;: j&#768;
</p>
<p>should be dotless j&rsquo;: j&#769;
</p>
<p>should be dotless j^: &#309;
</p>
<p>should be dotless j&quot;: j&#776;
</p></div>
';


$result_converted{'xml'}->{'accentenc'} = '<documentencoding encoding="ISO-8859-1" spaces=" ">ISO-8859-1</documentencoding>

<node identifier="first" spaces=" "><nodename>first</nodename></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>should be e&textlsquo;: <accent type="grave">e</accent> <accent type="grave" bracketed="off">e</accent>
</para>
<para>should be e&textrsquo;: <accent type="acute">e</accent> <accent type="acute" bracketed="off">e</accent>
</para>
<para>should be e^: <accent type="circ">e</accent> <accent type="circ" bracketed="off">e</accent>
</para>
<para>should be u&quot;: <accent type="uml">u</accent> <accent type="uml" bracketed="off">u</accent>
</para>
<para>should be i&textlsquo;: <accent type="grave">i</accent> <accent type="grave" bracketed="off">i</accent>
</para>
<para>should be i&textrsquo;: <accent type="acute">i</accent> <accent type="acute" bracketed="off">i</accent>
</para>
<para>should be i^: <accent type="circ">i</accent> <accent type="circ" bracketed="off">i</accent>
</para>
<para>should be u&quot;: <accent type="uml">u</accent> <accent type="uml" bracketed="off">u</accent>
</para>
<para>should be c,: <accent type="cedil">c</accent> <accent type="cedil" bracketed="off">c</accent>
</para>
<para>should be n~: <accent type="tilde">n</accent> <accent type="tilde" bracketed="off">n</accent>
</para>
<para>should be e=: <accent type="macr">e</accent> <accent type="macr" bracketed="off">e</accent>
</para>
<para>should be e<w>&textrsquo;</w>&textrsquo;: <accent type="dblac">e</accent> <accent type="dblac" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e.: <accent type="dot">e</accent> <accent type="dot" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e*: <accent type="ring">e</accent> <accent type="ring" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be ee[: <accent type="tieaccent">ee</accent>
</para>
<para>should be e(: <accent type="breve">e</accent> <accent type="breve" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e_: <accent type="ubaraccent">e</accent> <accent type="ubaraccent" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be .e: <accent type="udotaccent">e</accent> <accent type="udotaccent" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e&lt;: <accent type="caron">e</accent> <accent type="caron" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be a; : <accent type="ogon">a</accent> <accent type="ogon" spacesaftercmd=" " bracketed="off">a</accent>
</para>
<para>should be e; : <accent type="ogon">e</accent> <accent type="ogon" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>upside down: &iquest; &iexcl;
</para>
<para>A-with-circle: &aring;,&Aring;
</para>
<para>AE, OE ligatures: &aelig; &AElig; &oelig; &OElig;
</para>
<para>dotless i, j: <dotless>i</dotless> <dotless>j</dotless>
</para>
<para>Polish suppressed-L: &lslash; &Lslash;
</para>
<para>O-with-slash: &oslash; &Oslash;
</para>
<para>es-zet or sharp S: &szlig;
</para>
<para>pounds sterling: &pound;
</para>
<!-- c arg is command - @dotless{i} is special-cased for HTML -->
<para>should be dotless i&textlsquo;: <accent type="grave"><dotless>i</dotless></accent>
</para>
<para>should be dotless i&textrsquo;: <accent type="acute"><dotless>i</dotless></accent>
</para>
<para>should be dotless i^: <accent type="circ"><dotless>i</dotless></accent>
</para>
<para>should be dotless i&quot;: <accent type="uml"><dotless>i</dotless></accent>
</para>
<!-- c arg is command - @dotless{j} -->
<para>should be dotless j&textlsquo;: <accent type="grave"><dotless>j</dotless></accent>
</para>
<para>should be dotless j&textrsquo;: <accent type="acute"><dotless>j</dotless></accent>
</para>
<para>should be dotless j^: <accent type="circ"><dotless>j</dotless></accent>
</para>
<para>should be dotless j&quot;: <accent type="uml"><dotless>j</dotless></accent>
</para></top>
';


$result_converted{'docbook'}->{'accentenc'} = '<chapter label="" id="first">
<title>top</title>

<para>should be e&#8216;: &#232; &#232;
</para>
<para>should be e&#8217;: &#233; &#233;
</para>
<para>should be e^: &#234; &#234;
</para>
<para>should be u&quot;: &#252; &#252;
</para>
<para>should be i&#8216;: &#236; &#236;
</para>
<para>should be i&#8217;: &#237; &#237;
</para>
<para>should be i^: &#238; &#238;
</para>
<para>should be u&quot;: &#252; &#252;
</para>
<para>should be c,: &#231; &#231;
</para>
<para>should be n~: &#241; &#241;
</para>
<para>should be e=: &#275; &#275;
</para>
<para>should be e&#8217;<!-- /@w -->&#8217;: e&#779; e&#779;
</para>
<para>should be e.: &#279; &#279;
</para>
<para>should be e*: e&#778; e&#778;
</para>
<para>should be ee[: e&#865;e
</para>
<para>should be e(: &#277; &#277;
</para>
<para>should be e_: e&#818; e&#818;
</para>
<para>should be .e: &#7865; &#7865;
</para>
<para>should be e&lt;: &#283; &#283;
</para>
<para>should be a; : &#261; &#261;
</para>
<para>should be e; : &#281; &#281;
</para>
<para>upside down: &#191; &#161;
</para>
<para>A-with-circle: &#229;,&#197;
</para>
<para>AE, OE ligatures: &#230; &#198; &#339; &#338;
</para>
<para>dotless i, j: &#305; &#567;
</para>
<para>Polish suppressed-L: &#322; &#321;
</para>
<para>O-with-slash: &#248; &#216;
</para>
<para>es-zet or sharp S: &#223;
</para>
<para>pounds sterling: &#163;
</para>
<!-- arg is command - @dotless{i} is special-cased for HTML -->
<para>should be dotless i&#8216;: &#236;
</para>
<para>should be dotless i&#8217;: &#237;
</para>
<para>should be dotless i^: &#238;
</para>
<para>should be dotless i&quot;: &#239;
</para>
<!-- arg is command - @dotless{j} -->
<para>should be dotless j&#8216;: j&#768;
</para>
<para>should be dotless j&#8217;: j&#769;
</para>
<para>should be dotless j^: &#309;
</para>
<para>should be dotless j&quot;: j&#776;
</para></chapter>
';


$result_converted{'latex_text'}->{'accentenc'} = '
\\begin{document}
\\part*{{top}}
\\label{anchor:first}%

should be e`: \\`{e} \\`{e}

should be e\': \\\'{e} \\\'{e}

should be e\\^{}: \\^{e} \\^{e}

should be u": \\"{u} \\"{u}

should be i`: \\`{i} \\`{i}

should be i\': \\\'{i} \\\'{i}

should be i\\^{}: \\^{i} \\^{i}

should be u": \\"{u} \\"{u}

should be c,: \\c{c} \\c{c}

should be n\\~{}: \\~{n} \\~{n}

should be e=: \\={e} \\={e}

should be e\\hbox{\'}\': \\H{e} \\H{e}

should be e.: \\.{e} \\.{e}

should be e*: \\r{e} \\r{e}

should be ee[: \\t{ee}

should be e(: \\u{e} \\u{e}

should be e\\_: \\b{e} \\b{e}

should be .e: \\d{e} \\d{e}

should be e<: \\v{e} \\v{e}

should be a; : \\k{a} \\k{a}

should be e; : \\k{e} \\k{e}

upside down: \\textquestiondown{} \\textexclamdown{}

A-with-circle: \\aa{},\\AA{}

AE, OE ligatures: \\ae{} \\AE{} \\oe{} \\OE{}

dotless i, j: \\i{} \\j{}

Polish suppressed-L: \\l{} \\L{}

O-with-slash: \\o{} \\O{}

es-zet or sharp S: \\ss{}

pounds sterling: \\textsterling{}

should be dotless i`: \\`{\\i{}}

should be dotless i\': \\\'{\\i{}}

should be dotless i\\^{}: \\^{\\i{}}

should be dotless i": \\"{\\i{}}

should be dotless j`: \\`{\\j{}}

should be dotless j\': \\\'{\\j{}}

should be dotless j\\^{}: \\^{\\j{}}

should be dotless j": \\"{\\j{}}
';

1;
