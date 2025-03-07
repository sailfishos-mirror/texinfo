use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'at_commands_in_refs_utf8'} = '*document_root C58
 *before_node_section C1
  *preamble_before_content C3
   *@setfilename C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{at_commands_in_refs_utf8.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {at_commands_in_refs_utf8.info}
   *@documentencoding C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{utf-8}
   |text_arg:{utf-8}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {utf-8}
   {empty_line:\\n}
 *0 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E125]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E126|E128|E135|E149|E164|E175|E187|E201|E222|E250|E271|E285|E298|E312|E320|E325|E333|E340|E346|E351|E365|E386|E397|E402|E407|E412|E419]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E126]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *2 @menu C29 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@- @{ @}}
    |normalized:{-_007b-_007d}
     *@-
     { }
     *@{
     { }
     *@}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C17
    |EXTRA
    |node_content:{@  @\\t @! @* @. @: .@: @? @@}
    |normalized:{-_0021-_002e-_002e-_003f-_0040}
     *@ 
     { }
     *@\\t
     { }
     *@!
     { }
     *@*
     { }
     *@.
     { }
     *@:
     { .}
     *@:
     { }
     *@?
     { }
     *@@
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C9
    |EXTRA
    |node_content:{@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
    |normalized:{_0040-_007b-_007d-_005c-_0023}
     *3 @atchar C1 l10
      *brace_container
     { }
     *4 @lbracechar C1 l10
      *brace_container
     { }
     *5 @rbracechar C1 l10
      *brace_container
     { }
     *6 @backslashchar C1 l10
      *brace_container
     { }
     *7 @hashchar C1 l10
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C13
    |EXTRA
    |node_content:{@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
    |normalized:{LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e}
     *8 @LaTeX C1 l11
      *brace_container
     { }
     *9 @TeX C1 l11
      *brace_container
     { }
     *10 @bullet C1 l11
      *brace_container
     { }
     *11 @comma C1 l11
      *brace_container
     { }
     *12 @copyright C1 l11
      *brace_container
     { }
     *13 @dots C1 l11
      *brace_container
     { }
     *14 @enddots C1 l11
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l12
    {menu_entry_leading_text:* }
    *menu_entry_node C11
    |EXTRA
    |node_content:{@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
    |normalized:{_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212}
     *15 @equiv C1 l12
      *brace_container
     { }
     *16 @error C1 l12
      *brace_container
     { }
     *17 @euro C1 l12
      *brace_container
     { }
     *18 @exclamdown C1 l12
      *brace_container
     { }
     *19 @expansion C1 l12
      *brace_container
     { }
     *20 @minus C1 l12
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l13
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@geq{} @leq{} @arrow{}}
    |normalized:{_2265-_2264-_2192}
     *21 @geq C1 l13
      *brace_container
     { }
     *22 @leq C1 l13
      *brace_container
     { }
     *23 @arrow C1 l13
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l14
    {menu_entry_leading_text:* }
    *menu_entry_node C13
    |EXTRA
    |node_content:{@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
    |normalized:{_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae}
     *24 @ordf C1 l14
      *brace_container
     { }
     *25 @ordm C1 l14
      *brace_container
     { }
     *26 @point C1 l14
      *brace_container
     { }
     *27 @pounds C1 l14
      *brace_container
     { }
     *28 @print C1 l14
      *brace_container
     { }
     *29 @questiondown C1 l14
      *brace_container
     { }
     *30 @registeredsymbol C1 l14
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l15
    {menu_entry_leading_text:* }
    *menu_entry_node C9
    |EXTRA
    |node_content:{@result{} @textdegree{} a@tie{}b @today{} @aa{}}
    |normalized:{_21d2-_00b0-a-b-_00e5}
     *31 @result C1 l15
      *brace_container
     { }
     *32 @textdegree C1 l15
      *brace_container
     { a}
     *33 @tie C1 l15
      *brace_container
     {b }
     *34 @today C1 l15
      *brace_container
     { }
     *35 @aa C1 l15
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l16
    {menu_entry_leading_text:* }
    *menu_entry_node C27
    |EXTRA
    |node_content:{@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
    |normalized:{_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe}
     *36 @AA C1 l16
      *brace_container
     { }
     *37 @ae C1 l16
      *brace_container
     { }
     *38 @oe C1 l16
      *brace_container
     { }
     *39 @AE C1 l16
      *brace_container
     { }
     *40 @OE C1 l16
      *brace_container
     { }
     *41 @o C1 l16
      *brace_container
     { }
     *42 @O C1 l16
      *brace_container
     { }
     *43 @ss C1 l16
      *brace_container
     { }
     *44 @l C1 l16
      *brace_container
     { }
     *45 @L C1 l16
      *brace_container
     { }
     *46 @DH C1 l16
      *brace_container
     { }
     *47 @dh C1 l16
      *brace_container
     { }
     *48 @TH C1 l16
      *brace_container
     { }
     *49 @th C1 l16
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C21
    |EXTRA
    |node_content:{@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
    |normalized:{_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119}
     *50 @" C1 l17
      *brace_container C1
       {a}
     { }
     *51 @~ C1 l17
      *brace_container C1
       {e}
     { }
     *52 @^ C1 l17
      *brace_container C1
       *53 @dotless C1 l17
        *brace_container C1
         {i}
     { }
     *54 @^ C1 l17
      *brace_container C1
       {a}
     { }
     *55 @` C1 l17
      *brace_container C1
       {a}
     { }
     *56 @\' C1 l17
      *following_arg C1
       {e}
     { }
     *57 @, C1 l17
      *brace_container C1
       {c}
     { }
     *58 @= C1 l17
      *brace_container C1
       {e}
     { }
     *59 @ringaccent C1 l17
      *brace_container C1
       {e}
     { }
     *60 @H C1 l17
      *brace_container C1
       {e}
     { }
     *61 @ogonek C1 l17
      *brace_container C1
       {e}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l18
    {menu_entry_leading_text:* }
    *menu_entry_node C13
    |EXTRA
    |node_content:{@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
    |normalized:{_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e}
     *62 @dotaccent C1 l18
      *brace_container C1
       {e}
     { }
     *63 @u C1 l18
      *brace_container C1
       {e}
     { }
     *64 @ubaraccent C1 l18
      *brace_container C1
       {e}
     { }
     *65 @udotaccent C1 l18
      *brace_container C1
       {e}
     { }
     *66 @v C1 l18
      *brace_container C1
       {e}
     { }
     *67 @dotless C1 l18
      *brace_container C1
       {j}
     { }
     *68 @tieaccent C1 l18
      *brace_container C1
       {ee}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l19
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@dotless{i} @`{@=E} @,{@\'C}}
    |normalized:{_0131-_1e14-_1e08}
     *69 @dotless C1 l19
      *brace_container C1
       {i}
     { }
     *70 @` C1 l19
      *brace_container C1
       *71 @= C1 l19
        *following_arg C1
         {E}
     { }
     *72 @, C1 l19
      *brace_container C1
       *73 @\' C1 l19
        *following_arg C1
         {C}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l20
    {menu_entry_leading_text:* }
    *menu_entry_node C11
    |EXTRA
    |node_content:{@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
    |normalized:{_201c-_201d-_2018-_2019-_201e-_201a}
     *74 @quotedblleft C1 l20
      *brace_container
     { }
     *75 @quotedblright C1 l20
      *brace_container
     { }
     *76 @quoteleft C1 l20
      *brace_container
     { }
     *77 @quoteright C1 l20
      *brace_container
     { }
     *78 @quotedblbase C1 l20
      *brace_container
     { }
     *79 @quotesinglbase C1 l20
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l21
    {menu_entry_leading_text:* }
    *menu_entry_node C11
    |EXTRA
    |node_content:{@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
    |normalized:{_00ab-_00bb-_00ab-_00bb-_2039-_203a}
     *80 @guillemetleft C1 l21
      *brace_container
     { }
     *81 @guillemetright C1 l21
      *brace_container
     { }
     *82 @guillemotleft C1 l21
      *brace_container
     { }
     *83 @guillemotright C1 l21
      *brace_container
     { }
     *84 @guilsinglleft C1 l21
      *brace_container
     { }
     *85 @guilsinglright C1 l21
      *brace_container
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l22
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{`` \'\' --- -- ` \'}
    |normalized:{_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027}
     {`` \'\' --- -- ` \'}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l23
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
    |normalized:{AAA-AAA-BBB}
     *86 @acronym C2 l23
      *brace_arg C1
       {AAA}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {fff}
     { }
     *87 @acronym C1 l23
      *brace_arg C1
       {AAA}
     { }
     *88 @acronym C1 l23
      *brace_arg C1
       {BBB}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l24
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
    |normalized:{CCC-CCC-DDD}
     *89 @abbr C2 l24
      *brace_arg C1
       {CCC}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {rrr}
     { }
     *90 @abbr C1 l24
      *brace_arg C1
       {CCC}
     { }
     *91 @abbr C1 l24
      *brace_arg C1
       {DDD}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l25
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{@email{someone@@somewher, the someone} @email{no_explain@@there}}
    |normalized:{someone_0040somewher-no_005fexplain_0040there}
     *92 @email C2 l25
      *brace_arg C3
       {someone}
       *@@
       {somewher}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {the someone}
     { }
     *93 @email C1 l25
      *brace_arg C3
       {no_explain}
       *@@
       {there}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l26
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
    |normalized:{f_002d_002dile1-f_002d_002dile}
     *94 @image C1 l26
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile1}
     {  }
     *95 @image C5 l26
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile}
      *brace_arg C1
       {aze}
      *brace_arg C1
       {az}
      *brace_arg C1
       {alt}
      *brace_arg C1
       {e--xt}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l27
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@verb{. @ {} . .}}
    |normalized:{-_0040-_007b_007d-_002e-}
     *96 @verb C1 l27
     |INFO
     |delimiter:{.}
      *brace_container C1
       {raw: @ {} . }
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l28
    {menu_entry_leading_text:* }
    *menu_entry_node C17
    |EXTRA
    |node_content:{@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
    |normalized:{cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i}
     *97 @cite C1 l28
      *brace_container C2
       {cite }
       *98 @asis C1 l28
        *brace_container C1
         {asis}
     { }
     *99 @w C1 l28
      *brace_container C4
       {in }
       *@@
       {w }
       *100 @b C1 l28
        *brace_container C1
         {b}
     { }
     *101 @r C1 l28
      *brace_container C1
       {in r}
     { }
     *102 @sc C1 l28
      *brace_container C1
       {sc}
     { }
     *103 @strong C1 l28
      *brace_container C1
       {str}
     { }
     *104 @t C1 l28
      *brace_container C1
       {t}
     { }
     *105 @var C1 l28
      *brace_container C1
       {var}
     { }
     *106 @dfn C1 l28
      *brace_container C1
       {dfn}
     { }
     *107 @i C1 l28
      *brace_container C1
       {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l29
    {menu_entry_leading_text:* }
    *menu_entry_node C13
    |EXTRA
    |node_content:{@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
    |normalized:{env-code-option-samp-command-file-C_002dx-ESC}
     *108 @env C1 l29
      *brace_container C1
       {env}
     { }
     *109 @code C1 l29
      *brace_container C1
       {code}
     { }
     *110 @option C1 l29
      *brace_container C1
       {option}
     { }
     *111 @samp C1 l29
      *brace_container C1
       {samp}
     { }
     *112 @command C1 l29
      *brace_container C1
       {command}
     { }
     *113 @file C1 l29
      *brace_container C1
       {file}
     { }
     *114 @kbd C1 l29
      *brace_container C2
       {C-x }
       *115 @key C1 l29
        *brace_container C1
         {ESC}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l30
    {menu_entry_leading_text:* }
    *menu_entry_node C2
    |EXTRA
    |node_content:{8.27@dmn{in}}
    |normalized:{8_002e27in}
     {8.27}
     *116 @dmn C1 l30
      *brace_container C1
       {in}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l31
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{@sansserif{sansserif} @slanted{slanted}}
    |normalized:{sansserif-slanted}
     *117 @sansserif C1 l31
      *brace_container C1
       {sansserif}
     { }
     *118 @slanted C1 l31
      *brace_container C1
       {slanted}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l32
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@indicateurl{indicateurl}}
    |normalized:{indicateurl}
     *119 @indicateurl C1 l32
      *brace_container C1
       {indicateurl}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l33
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{@sub{g}H 3@sup{rd}}
    |normalized:{gH-3rd}
     *120 @sub C1 l33
      *brace_container C1
       {g}
     {H 3}
     *121 @sup C1 l33
      *brace_container C1
       {rd}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l34
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
    |normalized:{http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls}
     *122 @url C1 l34
      *brace_arg C1
       {http://somewhere_aaa}
     { }
     *123 @url C2 l34
      *brace_arg C1
       {url}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {text}
     { }
     *124 @uref C3 l34
      *brace_arg C1
       {/man.cgi/1/ls}
      *brace_arg
      *brace_arg C1
       {ls}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l35
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
 *125 @node C1 l37 {@- @{ @}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E126]
 |associated_title_command:[E126]
 |is_target:{1}
 |menu_directions:D[next->E127|up->E0]
 |node_directions:D[next->E127|prev->E0|up->E0]
 |normalized:{-_007b-_007d}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@-
    { }
    *@{
    { }
    *@}
 *126 @chapter C2 l38 {@- @{ @}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E125]
 |associated_node:[E125]
 |section_directions:D[next->E128|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E128|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@-
    { }
    *@{
    { }
    *@}
  {empty_line:\\n}
 *127 @node C1 l40 {@  @	 @! @* @. @: .@: @? @@}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E128]
 |associated_title_command:[E128]
 |is_target:{1}
 |menu_directions:D[next->E129|prev->E125|up->E0]
 |node_directions:D[next->E129|prev->E125|up->E0]
 |normalized:{-_0021-_002e-_002e-_003f-_0040}
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ 
    { }
    *@\\t
    { }
    *@!
    { }
    *@*
    { }
    *@.
    { }
    *@:
    { .}
    *@:
    { }
    *@?
    { }
    *@@
 *128 @chapter C2 l41 {@  @	 @! @* @. @: .@: @? @@}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E127]
 |associated_node:[E127]
 |section_directions:D[next->E135|prev->E126|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E135|prev->E126|up->E1]
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ 
    { }
    *@\\t
    { }
    *@!
    { }
    *@*
    { }
    *@.
    { }
    *@:
    { .}
    *@:
    { }
    *@?
    { }
    *@@
  {empty_line:\\n}
 *129 @node C1 l43 {@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E135]
 |associated_title_command:[E135]
 |is_target:{1}
 |menu_directions:D[next->E141|prev->E127|up->E0]
 |node_directions:D[next->E141|prev->E127|up->E0]
 |normalized:{_0040-_007b-_007d-_005c-_0023}
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *130 @atchar C1 l43
     *brace_container
    { }
    *131 @lbracechar C1 l43
     *brace_container
    { }
    *132 @rbracechar C1 l43
     *brace_container
    { }
    *133 @backslashchar C1 l43
     *brace_container
    { }
    *134 @hashchar C1 l43
     *brace_container
 *135 @chapter C2 l44 {@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E129]
 |associated_node:[E129]
 |section_directions:D[next->E149|prev->E128|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E149|prev->E128|up->E1]
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *136 @atchar C1 l44
     *brace_container
    { }
    *137 @lbracechar C1 l44
     *brace_container
    { }
    *138 @rbracechar C1 l44
     *brace_container
    { }
    *139 @backslashchar C1 l44
     *brace_container
    { }
    *140 @hashchar C1 l44
     *brace_container
  {empty_line:\\n}
 *141 @node C1 l46 {@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E149]
 |associated_title_command:[E149]
 |is_target:{1}
 |menu_directions:D[next->E157|prev->E129|up->E0]
 |node_directions:D[next->E157|prev->E129|up->E0]
 |normalized:{LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *142 @LaTeX C1 l46
     *brace_container
    { }
    *143 @TeX C1 l46
     *brace_container
    { }
    *144 @bullet C1 l46
     *brace_container
    { }
    *145 @comma C1 l46
     *brace_container
    { }
    *146 @copyright C1 l46
     *brace_container
    { }
    *147 @dots C1 l46
     *brace_container
    { }
    *148 @enddots C1 l46
     *brace_container
 *149 @chapter C2 l47 {@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E141]
 |associated_node:[E141]
 |section_directions:D[next->E164|prev->E135|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E164|prev->E135|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *150 @LaTeX C1 l47
     *brace_container
    { }
    *151 @TeX C1 l47
     *brace_container
    { }
    *152 @bullet C1 l47
     *brace_container
    { }
    *153 @comma C1 l47
     *brace_container
    { }
    *154 @copyright C1 l47
     *brace_container
    { }
    *155 @dots C1 l47
     *brace_container
    { }
    *156 @enddots C1 l47
     *brace_container
  {empty_line:\\n}
 *157 @node C1 l49 {@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E164]
 |associated_title_command:[E164]
 |is_target:{1}
 |menu_directions:D[next->E171|prev->E141|up->E0]
 |node_directions:D[next->E171|prev->E141|up->E0]
 |normalized:{_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *158 @equiv C1 l49
     *brace_container
    { }
    *159 @error C1 l49
     *brace_container
    { }
    *160 @euro C1 l49
     *brace_container
    { }
    *161 @exclamdown C1 l49
     *brace_container
    { }
    *162 @expansion C1 l49
     *brace_container
    { }
    *163 @minus C1 l49
     *brace_container
 *164 @chapter C2 l50 {@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E157]
 |associated_node:[E157]
 |section_directions:D[next->E175|prev->E149|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E175|prev->E149|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *165 @equiv C1 l50
     *brace_container
    { }
    *166 @error C1 l50
     *brace_container
    { }
    *167 @euro C1 l50
     *brace_container
    { }
    *168 @exclamdown C1 l50
     *brace_container
    { }
    *169 @expansion C1 l50
     *brace_container
    { }
    *170 @minus C1 l50
     *brace_container
  {empty_line:\\n}
 *171 @node C1 l52 {@geq{} @leq{} @arrow{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E175]
 |associated_title_command:[E175]
 |is_target:{1}
 |menu_directions:D[next->E179|prev->E157|up->E0]
 |node_directions:D[next->E179|prev->E157|up->E0]
 |normalized:{_2265-_2264-_2192}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *172 @geq C1 l52
     *brace_container
    { }
    *173 @leq C1 l52
     *brace_container
    { }
    *174 @arrow C1 l52
     *brace_container
 *175 @chapter C2 l53 {@geq{} @leq{} @arrow{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E171]
 |associated_node:[E171]
 |section_directions:D[next->E187|prev->E164|up->E1]
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[next->E187|prev->E164|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *176 @geq C1 l53
     *brace_container
    { }
    *177 @leq C1 l53
     *brace_container
    { }
    *178 @arrow C1 l53
     *brace_container
  {empty_line:\\n}
 *179 @node C1 l55 {@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E187]
 |associated_title_command:[E187]
 |is_target:{1}
 |menu_directions:D[next->E195|prev->E171|up->E0]
 |node_directions:D[next->E195|prev->E171|up->E0]
 |normalized:{_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *180 @ordf C1 l55
     *brace_container
    { }
    *181 @ordm C1 l55
     *brace_container
    { }
    *182 @point C1 l55
     *brace_container
    { }
    *183 @pounds C1 l55
     *brace_container
    { }
    *184 @print C1 l55
     *brace_container
    { }
    *185 @questiondown C1 l55
     *brace_container
    { }
    *186 @registeredsymbol C1 l55
     *brace_container
 *187 @chapter C2 l56 {@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E179]
 |associated_node:[E179]
 |section_directions:D[next->E201|prev->E175|up->E1]
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[next->E201|prev->E175|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *188 @ordf C1 l56
     *brace_container
    { }
    *189 @ordm C1 l56
     *brace_container
    { }
    *190 @point C1 l56
     *brace_container
    { }
    *191 @pounds C1 l56
     *brace_container
    { }
    *192 @print C1 l56
     *brace_container
    { }
    *193 @questiondown C1 l56
     *brace_container
    { }
    *194 @registeredsymbol C1 l56
     *brace_container
  {empty_line:\\n}
 *195 @node C1 l58 {@result{} @textdegree{} a@tie{}b @today{} @aa{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E201]
 |associated_title_command:[E201]
 |is_target:{1}
 |menu_directions:D[next->E207|prev->E179|up->E0]
 |node_directions:D[next->E207|prev->E179|up->E0]
 |normalized:{_21d2-_00b0-a-b-_00e5}
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *196 @result C1 l58
     *brace_container
    { }
    *197 @textdegree C1 l58
     *brace_container
    { a}
    *198 @tie C1 l58
     *brace_container
    {b }
    *199 @today C1 l58
     *brace_container
    { }
    *200 @aa C1 l58
     *brace_container
 *201 @chapter C2 l59 {@result{} @textdegree{} a@tie{}b @today{} @aa{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E195]
 |associated_node:[E195]
 |section_directions:D[next->E222|prev->E187|up->E1]
 |section_level:{1}
 |section_number:{8}
 |toplevel_directions:D[next->E222|prev->E187|up->E1]
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *202 @result C1 l59
     *brace_container
    { }
    *203 @textdegree C1 l59
     *brace_container
    { a}
    *204 @tie C1 l59
     *brace_container
    {b }
    *205 @today C1 l59
     *brace_container
    { }
    *206 @aa C1 l59
     *brace_container
  {empty_line:\\n}
 *207 @node C1 l61 {@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E222]
 |associated_title_command:[E222]
 |is_target:{1}
 |menu_directions:D[next->E237|prev->E195|up->E0]
 |node_directions:D[next->E237|prev->E195|up->E0]
 |normalized:{_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe}
  *arguments_line C1
   *line_arg C27
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *208 @AA C1 l61
     *brace_container
    { }
    *209 @ae C1 l61
     *brace_container
    { }
    *210 @oe C1 l61
     *brace_container
    { }
    *211 @AE C1 l61
     *brace_container
    { }
    *212 @OE C1 l61
     *brace_container
    { }
    *213 @o C1 l61
     *brace_container
    { }
    *214 @O C1 l61
     *brace_container
    { }
    *215 @ss C1 l61
     *brace_container
    { }
    *216 @l C1 l61
     *brace_container
    { }
    *217 @L C1 l61
     *brace_container
    { }
    *218 @DH C1 l61
     *brace_container
    { }
    *219 @dh C1 l61
     *brace_container
    { }
    *220 @TH C1 l61
     *brace_container
    { }
    *221 @th C1 l61
     *brace_container
 *222 @chapter C2 l62 {@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E207]
 |associated_node:[E207]
 |section_directions:D[next->E250|prev->E201|up->E1]
 |section_level:{1}
 |section_number:{9}
 |toplevel_directions:D[next->E250|prev->E201|up->E1]
  *arguments_line C1
   *line_arg C27
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *223 @AA C1 l62
     *brace_container
    { }
    *224 @ae C1 l62
     *brace_container
    { }
    *225 @oe C1 l62
     *brace_container
    { }
    *226 @AE C1 l62
     *brace_container
    { }
    *227 @OE C1 l62
     *brace_container
    { }
    *228 @o C1 l62
     *brace_container
    { }
    *229 @O C1 l62
     *brace_container
    { }
    *230 @ss C1 l62
     *brace_container
    { }
    *231 @l C1 l62
     *brace_container
    { }
    *232 @L C1 l62
     *brace_container
    { }
    *233 @DH C1 l62
     *brace_container
    { }
    *234 @dh C1 l62
     *brace_container
    { }
    *235 @TH C1 l62
     *brace_container
    { }
    *236 @th C1 l62
     *brace_container
  {empty_line:\\n}
 *237 @node C1 l64 {@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E250]
 |associated_title_command:[E250]
 |is_target:{1}
 |menu_directions:D[next->E263|prev->E207|up->E0]
 |node_directions:D[next->E263|prev->E207|up->E0]
 |normalized:{_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119}
  *arguments_line C1
   *line_arg C21
   |INFO
   |spaces_after_argument:
    |{\\n}
    *238 @" C1 l64
     *brace_container C1
      {a}
    { }
    *239 @~ C1 l64
     *brace_container C1
      {e}
    { }
    *240 @^ C1 l64
     *brace_container C1
      *241 @dotless C1 l64
       *brace_container C1
        {i}
    { }
    *242 @^ C1 l64
     *brace_container C1
      {a}
    { }
    *243 @` C1 l64
     *brace_container C1
      {a}
    { }
    *244 @\' C1 l64
     *following_arg C1
      {e}
    { }
    *245 @, C1 l64
     *brace_container C1
      {c}
    { }
    *246 @= C1 l64
     *brace_container C1
      {e}
    { }
    *247 @ringaccent C1 l64
     *brace_container C1
      {e}
    { }
    *248 @H C1 l64
     *brace_container C1
      {e}
    { }
    *249 @ogonek C1 l64
     *brace_container C1
      {e}
 *250 @chapter C2 l65 {@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |associated_anchor_command:[E237]
 |associated_node:[E237]
 |section_directions:D[next->E271|prev->E222|up->E1]
 |section_level:{1}
 |section_number:{10}
 |toplevel_directions:D[next->E271|prev->E222|up->E1]
  *arguments_line C1
   *line_arg C21
   |INFO
   |spaces_after_argument:
    |{\\n}
    *251 @" C1 l65
     *brace_container C1
      {a}
    { }
    *252 @~ C1 l65
     *brace_container C1
      {e}
    { }
    *253 @^ C1 l65
     *brace_container C1
      *254 @dotless C1 l65
       *brace_container C1
        {i}
    { }
    *255 @^ C1 l65
     *brace_container C1
      {a}
    { }
    *256 @` C1 l65
     *brace_container C1
      {a}
    { }
    *257 @\' C1 l65
     *following_arg C1
      {e}
    { }
    *258 @, C1 l65
     *brace_container C1
      {c}
    { }
    *259 @= C1 l65
     *brace_container C1
      {e}
    { }
    *260 @ringaccent C1 l65
     *brace_container C1
      {e}
    { }
    *261 @H C1 l65
     *brace_container C1
      {e}
    { }
    *262 @ogonek C1 l65
     *brace_container C1
      {e}
  {empty_line:\\n}
 *263 @node C1 l67 {@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E271]
 |associated_title_command:[E271]
 |is_target:{1}
 |menu_directions:D[next->E279|prev->E237|up->E0]
 |node_directions:D[next->E279|prev->E237|up->E0]
 |normalized:{_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *264 @dotaccent C1 l67
     *brace_container C1
      {e}
    { }
    *265 @u C1 l67
     *brace_container C1
      {e}
    { }
    *266 @ubaraccent C1 l67
     *brace_container C1
      {e}
    { }
    *267 @udotaccent C1 l67
     *brace_container C1
      {e}
    { }
    *268 @v C1 l67
     *brace_container C1
      {e}
    { }
    *269 @dotless C1 l67
     *brace_container C1
      {j}
    { }
    *270 @tieaccent C1 l67
     *brace_container C1
      {ee}
 *271 @chapter C2 l68 {@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E263]
 |associated_node:[E263]
 |section_directions:D[next->E285|prev->E250|up->E1]
 |section_level:{1}
 |section_number:{11}
 |toplevel_directions:D[next->E285|prev->E250|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *272 @dotaccent C1 l68
     *brace_container C1
      {e}
    { }
    *273 @u C1 l68
     *brace_container C1
      {e}
    { }
    *274 @ubaraccent C1 l68
     *brace_container C1
      {e}
    { }
    *275 @udotaccent C1 l68
     *brace_container C1
      {e}
    { }
    *276 @v C1 l68
     *brace_container C1
      {e}
    { }
    *277 @dotless C1 l68
     *brace_container C1
      {j}
    { }
    *278 @tieaccent C1 l68
     *brace_container C1
      {ee}
  {empty_line:\\n}
 *279 @node C1 l70 {@dotless{i} @`{@=E} @,{@\'C}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E285]
 |associated_title_command:[E285]
 |is_target:{1}
 |menu_directions:D[next->E291|prev->E263|up->E0]
 |node_directions:D[next->E291|prev->E263|up->E0]
 |normalized:{_0131-_1e14-_1e08}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *280 @dotless C1 l70
     *brace_container C1
      {i}
    { }
    *281 @` C1 l70
     *brace_container C1
      *282 @= C1 l70
       *following_arg C1
        {E}
    { }
    *283 @, C1 l70
     *brace_container C1
      *284 @\' C1 l70
       *following_arg C1
        {C}
 *285 @chapter C2 l71 {@dotless{i} @`{@=E} @,{@\'C}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E279]
 |associated_node:[E279]
 |section_directions:D[next->E298|prev->E271|up->E1]
 |section_level:{1}
 |section_number:{12}
 |toplevel_directions:D[next->E298|prev->E271|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *286 @dotless C1 l71
     *brace_container C1
      {i}
    { }
    *287 @` C1 l71
     *brace_container C1
      *288 @= C1 l71
       *following_arg C1
        {E}
    { }
    *289 @, C1 l71
     *brace_container C1
      *290 @\' C1 l71
       *following_arg C1
        {C}
  {empty_line:\\n}
 *291 @node C1 l73 {@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E298]
 |associated_title_command:[E298]
 |is_target:{1}
 |menu_directions:D[next->E305|prev->E279|up->E0]
 |node_directions:D[next->E305|prev->E279|up->E0]
 |normalized:{_201c-_201d-_2018-_2019-_201e-_201a}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *292 @quotedblleft C1 l73
     *brace_container
    { }
    *293 @quotedblright C1 l73
     *brace_container
    { }
    *294 @quoteleft C1 l73
     *brace_container
    { }
    *295 @quoteright C1 l73
     *brace_container
    { }
    *296 @quotedblbase C1 l73
     *brace_container
    { }
    *297 @quotesinglbase C1 l73
     *brace_container
 *298 @chapter C2 l74 {@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E291]
 |associated_node:[E291]
 |section_directions:D[next->E312|prev->E285|up->E1]
 |section_level:{1}
 |section_number:{13}
 |toplevel_directions:D[next->E312|prev->E285|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *299 @quotedblleft C1 l74
     *brace_container
    { }
    *300 @quotedblright C1 l74
     *brace_container
    { }
    *301 @quoteleft C1 l74
     *brace_container
    { }
    *302 @quoteright C1 l74
     *brace_container
    { }
    *303 @quotedblbase C1 l74
     *brace_container
    { }
    *304 @quotesinglbase C1 l74
     *brace_container
  {empty_line:\\n}
 *305 @node C1 l76 {@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E312]
 |associated_title_command:[E312]
 |is_target:{1}
 |menu_directions:D[next->E319|prev->E291|up->E0]
 |node_directions:D[next->E319|prev->E291|up->E0]
 |normalized:{_00ab-_00bb-_00ab-_00bb-_2039-_203a}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *306 @guillemetleft C1 l76
     *brace_container
    { }
    *307 @guillemetright C1 l76
     *brace_container
    { }
    *308 @guillemotleft C1 l76
     *brace_container
    { }
    *309 @guillemotright C1 l76
     *brace_container
    { }
    *310 @guilsinglleft C1 l76
     *brace_container
    { }
    *311 @guilsinglright C1 l76
     *brace_container
 *312 @chapter C2 l77 {@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E305]
 |associated_node:[E305]
 |section_directions:D[next->E320|prev->E298|up->E1]
 |section_level:{1}
 |section_number:{14}
 |toplevel_directions:D[next->E320|prev->E298|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *313 @guillemetleft C1 l77
     *brace_container
    { }
    *314 @guillemetright C1 l77
     *brace_container
    { }
    *315 @guillemotleft C1 l77
     *brace_container
    { }
    *316 @guillemotright C1 l77
     *brace_container
    { }
    *317 @guilsinglleft C1 l77
     *brace_container
    { }
    *318 @guilsinglright C1 l77
     *brace_container
  {empty_line:\\n}
 *319 @node C1 l79 {`` \'\' --- -- ` \'}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E320]
 |associated_title_command:[E320]
 |is_target:{1}
 |menu_directions:D[next->E321|prev->E305|up->E0]
 |node_directions:D[next->E321|prev->E305|up->E0]
 |normalized:{_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {`` \'\' --- -- ` \'}
 *320 @chapter C2 l80 {`` \'\' --- -- ` \'}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E319]
 |associated_node:[E319]
 |section_directions:D[next->E325|prev->E312|up->E1]
 |section_level:{1}
 |section_number:{15}
 |toplevel_directions:D[next->E325|prev->E312|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {`` \'\' --- -- ` \'}
  {empty_line:\\n}
 *321 @node C1 l82 {@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E325]
 |associated_title_command:[E325]
 |is_target:{1}
 |menu_directions:D[next->E329|prev->E319|up->E0]
 |node_directions:D[next->E329|prev->E319|up->E0]
 |normalized:{AAA-AAA-BBB}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *322 @acronym C2 l82
     *brace_arg C1
      {AAA}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {fff}
    { }
    *323 @acronym C1 l82
     *brace_arg C1
      {AAA}
    { }
    *324 @acronym C1 l82
     *brace_arg C1
      {BBB}
 *325 @chapter C2 l83 {@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E321]
 |associated_node:[E321]
 |section_directions:D[next->E333|prev->E320|up->E1]
 |section_level:{1}
 |section_number:{16}
 |toplevel_directions:D[next->E333|prev->E320|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *326 @acronym C2 l83
     *brace_arg C1
      {AAA}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {fff}
    { }
    *327 @acronym C1 l83
     *brace_arg C1
      {AAA}
    { }
    *328 @acronym C1 l83
     *brace_arg C1
      {BBB}
  {empty_line:\\n}
 *329 @node C1 l85 {@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E333]
 |associated_title_command:[E333]
 |is_target:{1}
 |menu_directions:D[next->E337|prev->E321|up->E0]
 |node_directions:D[next->E337|prev->E321|up->E0]
 |normalized:{CCC-CCC-DDD}
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<start;1>
   >*@ifnottex C1 l86
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *330 @abbr C2 l85
     *brace_arg C1
      {CCC}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {rrr}
    { }
    *331 @abbr C1 l85
     *brace_arg C1
      {CCC}
    { }
    *332 @abbr C1 l85
     *brace_arg C1
      {DDD}
 *333 @chapter C2 l87 {@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E329]
 |associated_node:[E329]
 |section_directions:D[next->E340|prev->E325|up->E1]
 |section_level:{1}
 |section_number:{17}
 |toplevel_directions:D[next->E340|prev->E325|up->E1]
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<end;1>
   >*@end C1 l88
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
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *334 @abbr C2 l87
     *brace_arg C1
      {CCC}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {rrr}
    { }
    *335 @abbr C1 l87
     *brace_arg C1
      {CCC}
    { }
    *336 @abbr C1 l87
     *brace_arg C1
      {DDD}
  {empty_line:\\n}
 *337 @node C1 l90 {@email{someone@@somewher, the someone} @email{no_explain@@there}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E340]
 |associated_title_command:[E340]
 |is_target:{1}
 |menu_directions:D[next->E343|prev->E329|up->E0]
 |node_directions:D[next->E343|prev->E329|up->E0]
 |normalized:{someone_0040somewher-no_005fexplain_0040there}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *338 @email C2 l90
     *brace_arg C3
      {someone}
      *@@
      {somewher}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {the someone}
    { }
    *339 @email C1 l90
     *brace_arg C3
      {no_explain}
      *@@
      {there}
 *340 @chapter C2 l91 {@email{someone@@somewher, the someone} @email{no_explain@@there}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E337]
 |associated_node:[E337]
 |section_directions:D[next->E346|prev->E333|up->E1]
 |section_level:{1}
 |section_number:{18}
 |toplevel_directions:D[next->E346|prev->E333|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *341 @email C2 l91
     *brace_arg C3
      {someone}
      *@@
      {somewher}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {the someone}
    { }
    *342 @email C1 l91
     *brace_arg C3
      {no_explain}
      *@@
      {there}
  {empty_line:\\n}
 *343 @node C1 l93 {@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E346]
 |associated_title_command:[E346]
 |is_target:{1}
 |menu_directions:D[next->E349|prev->E337|up->E0]
 |node_directions:D[next->E349|prev->E337|up->E0]
 |normalized:{f_002d_002dile1-f_002d_002dile}
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<start;2>
   >*@ifnottex C1 l94
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *344 @image C1 l93
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile1}
    {  }
    *345 @image C5 l93
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg C1
      {aze}
     *brace_arg C1
      {az}
     *brace_arg C1
      {alt}
     *brace_arg C1
      {e--xt}
 *346 @chapter C2 l95 {@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E343]
 |associated_node:[E343]
 |section_directions:D[next->E351|prev->E340|up->E1]
 |section_level:{1}
 |section_number:{19}
 |toplevel_directions:D[next->E351|prev->E340|up->E1]
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<end;2>
   >*@end C1 l96
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
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *347 @image C1 l95
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile1}
    {  }
    *348 @image C5 l95
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg C1
      {aze}
     *brace_arg C1
      {az}
     *brace_arg C1
      {alt}
     *brace_arg C1
      {e--xt}
  {empty_line:\\n}
 *349 @node C1 l98 {@verb{. @ {} . .}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E351]
 |associated_title_command:[E351]
 |is_target:{1}
 |menu_directions:D[next->E353|prev->E343|up->E0]
 |node_directions:D[next->E353|prev->E343|up->E0]
 |normalized:{-_0040-_007b_007d-_002e-}
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<start;3>
   >*@ifnottex C1 l99
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *350 @verb C1 l98
    |INFO
    |delimiter:{.}
     *brace_container C1
      {raw: @ {} . }
 *351 @chapter C2 l100 {@verb{. @ {} . .}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E349]
 |associated_node:[E349]
 |section_directions:D[next->E365|prev->E346|up->E1]
 |section_level:{1}
 |section_number:{20}
 |toplevel_directions:D[next->E365|prev->E346|up->E1]
  *arguments_line C1
  >SOURCEMARKS
  >expanded_conditional_command<end;3>
   >*@end C1 l101
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
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *352 @verb C1 l100
    |INFO
    |delimiter:{.}
     *brace_container C1
      {raw: @ {} . }
  {empty_line:\\n}
 *353 @node C1 l103 {@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E365]
 |associated_title_command:[E365]
 |is_target:{1}
 |menu_directions:D[next->E377|prev->E349|up->E0]
 |node_directions:D[next->E377|prev->E349|up->E0]
 |normalized:{cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i}
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *354 @cite C1 l103
     *brace_container C2
      {cite }
      *355 @asis C1 l103
       *brace_container C1
        {asis}
    { }
    *356 @w C1 l103
     *brace_container C4
      {in }
      *@@
      {w }
      *357 @b C1 l103
       *brace_container C1
        {b}
    { }
    *358 @r C1 l103
     *brace_container C1
      {in r}
    { }
    *359 @sc C1 l103
     *brace_container C1
      {sc}
    { }
    *360 @strong C1 l103
     *brace_container C1
      {str}
    { }
    *361 @t C1 l103
     *brace_container C1
      {t}
    { }
    *362 @var C1 l103
     *brace_container C1
      {var}
    { }
    *363 @dfn C1 l103
     *brace_container C1
      {dfn}
    { }
    *364 @i C1 l103
     *brace_container C1
      {i}
 *365 @chapter C2 l104 {@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E353]
 |associated_node:[E353]
 |section_directions:D[next->E386|prev->E351|up->E1]
 |section_level:{1}
 |section_number:{21}
 |toplevel_directions:D[next->E386|prev->E351|up->E1]
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *366 @cite C1 l104
     *brace_container C2
      {cite }
      *367 @asis C1 l104
       *brace_container C1
        {asis}
    { }
    *368 @w C1 l104
     *brace_container C4
      {in }
      *@@
      {w }
      *369 @b C1 l104
       *brace_container C1
        {b}
    { }
    *370 @r C1 l104
     *brace_container C1
      {in r}
    { }
    *371 @sc C1 l104
     *brace_container C1
      {sc}
    { }
    *372 @strong C1 l104
     *brace_container C1
      {str}
    { }
    *373 @t C1 l104
     *brace_container C1
      {t}
    { }
    *374 @var C1 l104
     *brace_container C1
      {var}
    { }
    *375 @dfn C1 l104
     *brace_container C1
      {dfn}
    { }
    *376 @i C1 l104
     *brace_container C1
      {i}
  {empty_line:\\n}
 *377 @node C1 l106 {@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E386]
 |associated_title_command:[E386]
 |is_target:{1}
 |menu_directions:D[next->E395|prev->E353|up->E0]
 |node_directions:D[next->E395|prev->E353|up->E0]
 |normalized:{env-code-option-samp-command-file-C_002dx-ESC}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *378 @env C1 l106
     *brace_container C1
      {env}
    { }
    *379 @code C1 l106
     *brace_container C1
      {code}
    { }
    *380 @option C1 l106
     *brace_container C1
      {option}
    { }
    *381 @samp C1 l106
     *brace_container C1
      {samp}
    { }
    *382 @command C1 l106
     *brace_container C1
      {command}
    { }
    *383 @file C1 l106
     *brace_container C1
      {file}
    { }
    *384 @kbd C1 l106
     *brace_container C2
      {C-x }
      *385 @key C1 l106
       *brace_container C1
        {ESC}
 *386 @chapter C2 l107 {@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E377]
 |associated_node:[E377]
 |section_directions:D[next->E397|prev->E365|up->E1]
 |section_level:{1}
 |section_number:{22}
 |toplevel_directions:D[next->E397|prev->E365|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *387 @env C1 l107
     *brace_container C1
      {env}
    { }
    *388 @code C1 l107
     *brace_container C1
      {code}
    { }
    *389 @option C1 l107
     *brace_container C1
      {option}
    { }
    *390 @samp C1 l107
     *brace_container C1
      {samp}
    { }
    *391 @command C1 l107
     *brace_container C1
      {command}
    { }
    *392 @file C1 l107
     *brace_container C1
      {file}
    { }
    *393 @kbd C1 l107
     *brace_container C2
      {C-x }
      *394 @key C1 l107
       *brace_container C1
        {ESC}
  {empty_line:\\n}
 *395 @node C1 l109 {8.27@dmn{in}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E397]
 |associated_title_command:[E397]
 |is_target:{1}
 |menu_directions:D[next->E399|prev->E377|up->E0]
 |node_directions:D[next->E399|prev->E377|up->E0]
 |normalized:{8_002e27in}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {8.27}
    *396 @dmn C1 l109
     *brace_container C1
      {in}
 *397 @chapter C2 l110 {8.27@dmn{in}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E395]
 |associated_node:[E395]
 |section_directions:D[next->E402|prev->E386|up->E1]
 |section_level:{1}
 |section_number:{23}
 |toplevel_directions:D[next->E402|prev->E386|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {8.27}
    *398 @dmn C1 l110
     *brace_container C1
      {in}
  {empty_line:\\n}
 *399 @node C1 l112 {@sansserif{sansserif} @slanted{slanted}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E402]
 |associated_title_command:[E402]
 |is_target:{1}
 |menu_directions:D[next->E405|prev->E395|up->E0]
 |node_directions:D[next->E405|prev->E395|up->E0]
 |normalized:{sansserif-slanted}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *400 @sansserif C1 l112
     *brace_container C1
      {sansserif}
    { }
    *401 @slanted C1 l112
     *brace_container C1
      {slanted}
 *402 @chapter C2 l113 {@sansserif{sansserif} @slanted{slanted}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E399]
 |associated_node:[E399]
 |section_directions:D[next->E407|prev->E397|up->E1]
 |section_level:{1}
 |section_number:{24}
 |toplevel_directions:D[next->E407|prev->E397|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *403 @sansserif C1 l113
     *brace_container C1
      {sansserif}
    { }
    *404 @slanted C1 l113
     *brace_container C1
      {slanted}
  {empty_line:\\n}
 *405 @node C1 l115 {@indicateurl{indicateurl}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E407]
 |associated_title_command:[E407]
 |is_target:{1}
 |menu_directions:D[next->E409|prev->E399|up->E0]
 |node_directions:D[next->E409|prev->E399|up->E0]
 |normalized:{indicateurl}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *406 @indicateurl C1 l115
     *brace_container C1
      {indicateurl}
 *407 @chapter C2 l116 {@indicateurl{indicateurl}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E405]
 |associated_node:[E405]
 |section_directions:D[next->E412|prev->E402|up->E1]
 |section_level:{1}
 |section_number:{25}
 |toplevel_directions:D[next->E412|prev->E402|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *408 @indicateurl C1 l116
     *brace_container C1
      {indicateurl}
  {empty_line:\\n}
 *409 @node C1 l118 {@sub{g}H 3@sup{rd}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E412]
 |associated_title_command:[E412]
 |is_target:{1}
 |menu_directions:D[next->E415|prev->E405|up->E0]
 |node_directions:D[next->E415|prev->E405|up->E0]
 |normalized:{gH-3rd}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *410 @sub C1 l118
     *brace_container C1
      {g}
    {H 3}
    *411 @sup C1 l118
     *brace_container C1
      {rd}
 *412 @chapter C2 l119 {@sub{g}H 3@sup{rd}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E409]
 |associated_node:[E409]
 |section_directions:D[next->E419|prev->E407|up->E1]
 |section_level:{1}
 |section_number:{26}
 |toplevel_directions:D[next->E419|prev->E407|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *413 @sub C1 l119
     *brace_container C1
      {g}
    {H 3}
    *414 @sup C1 l119
     *brace_container C1
      {rd}
  {empty_line:\\n}
 *415 @node C1 l121 {@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E419]
 |associated_title_command:[E419]
 |is_target:{1}
 |menu_directions:D[prev->E409|up->E0]
 |node_directions:D[prev->E409|up->E0]
 |normalized:{http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *416 @url C1 l121
     *brace_arg C1
      {http://somewhere_aaa}
    { }
    *417 @url C2 l121
     *brace_arg C1
      {url}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {text}
    { }
    *418 @uref C3 l121
     *brace_arg C1
      {/man.cgi/1/ls}
     *brace_arg
     *brace_arg C1
      {ls}
 *419 @chapter C56 l122 {@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E415]
 |associated_node:[E415]
 |section_directions:D[prev->E412|up->E1]
 |section_level:{1}
 |section_number:{27}
 |toplevel_directions:D[prev->E412|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *420 @url C1 l122
     *brace_arg C1
      {http://somewhere_aaa}
    { }
    *421 @url C2 l122
     *brace_arg C1
      {url}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {text}
    { }
    *422 @uref C3 l122
     *brace_arg C1
      {/man.cgi/1/ls}
     *brace_arg
     *brace_arg C1
      {ls}
  {empty_line:\\n}
  *paragraph C2
   *423 @ref C1 l124
    *brace_arg C5
    |EXTRA
    |node_content:{@- @{ @}}
    |normalized:{-_007b-_007d}
     *@-
     { }
     *@{
     { }
     *@}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *424 @ref C1 l126
    *brace_arg C17
    |EXTRA
    |node_content:{@  @\\t @! @* @. @: .@: @? @@}
    |normalized:{-_0021-_002e-_002e-_003f-_0040}
     *@ 
     { }
     *@\\t
     { }
     *@!
     { }
     *@*
     { }
     *@.
     { }
     *@:
     { .}
     *@:
     { }
     *@?
     { }
     *@@
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *425 @ref C1 l128
    *brace_arg C9
    |EXTRA
    |node_content:{@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
    |normalized:{_0040-_007b-_007d-_005c-_0023}
     *426 @atchar C1 l128
      *brace_container
     { }
     *427 @lbracechar C1 l128
      *brace_container
     { }
     *428 @rbracechar C1 l128
      *brace_container
     { }
     *429 @backslashchar C1 l128
      *brace_container
     { }
     *430 @hashchar C1 l128
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *431 @ref C1 l130
    *brace_arg C13
    |EXTRA
    |node_content:{@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
    |normalized:{LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e}
     *432 @LaTeX C1 l130
      *brace_container
     { }
     *433 @TeX C1 l130
      *brace_container
     { }
     *434 @bullet C1 l130
      *brace_container
     { }
     *435 @comma C1 l130
      *brace_container
     { }
     *436 @copyright C1 l130
      *brace_container
     { }
     *437 @dots C1 l130
      *brace_container
     { }
     *438 @enddots C1 l130
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *439 @ref C1 l132
    *brace_arg C11
    |EXTRA
    |node_content:{@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
    |normalized:{_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212}
     *440 @equiv C1 l132
      *brace_container
     { }
     *441 @error C1 l132
      *brace_container
     { }
     *442 @euro C1 l132
      *brace_container
     { }
     *443 @exclamdown C1 l132
      *brace_container
     { }
     *444 @expansion C1 l132
      *brace_container
     { }
     *445 @minus C1 l132
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *446 @ref C1 l134
    *brace_arg C5
    |EXTRA
    |node_content:{@geq{} @leq{} @arrow{}}
    |normalized:{_2265-_2264-_2192}
     *447 @geq C1 l134
      *brace_container
     { }
     *448 @leq C1 l134
      *brace_container
     { }
     *449 @arrow C1 l134
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *450 @ref C1 l136
    *brace_arg C13
    |EXTRA
    |node_content:{@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
    |normalized:{_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae}
     *451 @ordf C1 l136
      *brace_container
     { }
     *452 @ordm C1 l136
      *brace_container
     { }
     *453 @point C1 l136
      *brace_container
     { }
     *454 @pounds C1 l136
      *brace_container
     { }
     *455 @print C1 l136
      *brace_container
     { }
     *456 @questiondown C1 l136
      *brace_container
     { }
     *457 @registeredsymbol C1 l136
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *458 @ref C1 l138
    *brace_arg C9
    |EXTRA
    |node_content:{@result{} @textdegree{} a@tie{}b @today{} @aa{}}
    |normalized:{_21d2-_00b0-a-b-_00e5}
     *459 @result C1 l138
      *brace_container
     { }
     *460 @textdegree C1 l138
      *brace_container
     { a}
     *461 @tie C1 l138
      *brace_container
     {b }
     *462 @today C1 l138
      *brace_container
     { }
     *463 @aa C1 l138
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *464 @ref C1 l140
    *brace_arg C27
    |EXTRA
    |node_content:{@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
    |normalized:{_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe}
     *465 @AA C1 l140
      *brace_container
     { }
     *466 @ae C1 l140
      *brace_container
     { }
     *467 @oe C1 l140
      *brace_container
     { }
     *468 @AE C1 l140
      *brace_container
     { }
     *469 @OE C1 l140
      *brace_container
     { }
     *470 @o C1 l140
      *brace_container
     { }
     *471 @O C1 l140
      *brace_container
     { }
     *472 @ss C1 l140
      *brace_container
     { }
     *473 @l C1 l140
      *brace_container
     { }
     *474 @L C1 l140
      *brace_container
     { }
     *475 @DH C1 l140
      *brace_container
     { }
     *476 @dh C1 l140
      *brace_container
     { }
     *477 @TH C1 l140
      *brace_container
     { }
     *478 @th C1 l140
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *479 @ref C1 l142
    *brace_arg C21
    |EXTRA
    |node_content:{@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
    |normalized:{_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119}
     *480 @" C1 l142
      *brace_container C1
       {a}
     { }
     *481 @~ C1 l142
      *brace_container C1
       {e}
     { }
     *482 @^ C1 l142
      *brace_container C1
       *483 @dotless C1 l142
        *brace_container C1
         {i}
     { }
     *484 @^ C1 l142
      *brace_container C1
       {a}
     { }
     *485 @` C1 l142
      *brace_container C1
       {a}
     { }
     *486 @\' C1 l142
      *following_arg C1
       {e}
     { }
     *487 @, C1 l142
      *brace_container C1
       {c}
     { }
     *488 @= C1 l142
      *brace_container C1
       {e}
     { }
     *489 @ringaccent C1 l142
      *brace_container C1
       {e}
     { }
     *490 @H C1 l142
      *brace_container C1
       {e}
     { }
     *491 @ogonek C1 l142
      *brace_container C1
       {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *492 @ref C1 l144
    *brace_arg C13
    |EXTRA
    |node_content:{@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
    |normalized:{_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e}
     *493 @dotaccent C1 l144
      *brace_container C1
       {e}
     { }
     *494 @u C1 l144
      *brace_container C1
       {e}
     { }
     *495 @ubaraccent C1 l144
      *brace_container C1
       {e}
     { }
     *496 @udotaccent C1 l144
      *brace_container C1
       {e}
     { }
     *497 @v C1 l144
      *brace_container C1
       {e}
     { }
     *498 @dotless C1 l144
      *brace_container C1
       {j}
     { }
     *499 @tieaccent C1 l144
      *brace_container C1
       {ee}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *500 @ref C1 l146
    *brace_arg C5
    |EXTRA
    |node_content:{@dotless{i} @`{@=E} @,{@\'C}}
    |normalized:{_0131-_1e14-_1e08}
     *501 @dotless C1 l146
      *brace_container C1
       {i}
     { }
     *502 @` C1 l146
      *brace_container C1
       *503 @= C1 l146
        *following_arg C1
         {E}
     { }
     *504 @, C1 l146
      *brace_container C1
       *505 @\' C1 l146
        *following_arg C1
         {C}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *506 @ref C1 l148
    *brace_arg C11
    |EXTRA
    |node_content:{@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
    |normalized:{_201c-_201d-_2018-_2019-_201e-_201a}
     *507 @quotedblleft C1 l148
      *brace_container
     { }
     *508 @quotedblright C1 l148
      *brace_container
     { }
     *509 @quoteleft C1 l148
      *brace_container
     { }
     *510 @quoteright C1 l148
      *brace_container
     { }
     *511 @quotedblbase C1 l148
      *brace_container
     { }
     *512 @quotesinglbase C1 l148
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *513 @ref C1 l150
    *brace_arg C11
    |EXTRA
    |node_content:{@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
    |normalized:{_00ab-_00bb-_00ab-_00bb-_2039-_203a}
     *514 @guillemetleft C1 l150
      *brace_container
     { }
     *515 @guillemetright C1 l150
      *brace_container
     { }
     *516 @guillemotleft C1 l150
      *brace_container
     { }
     *517 @guillemotright C1 l150
      *brace_container
     { }
     *518 @guilsinglleft C1 l150
      *brace_container
     { }
     *519 @guilsinglright C1 l150
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *520 @ref C1 l152
    *brace_arg C1
    |EXTRA
    |node_content:{`` \'\' --- -- ` \'}
    |normalized:{_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027}
     {`` \'\' --- -- ` \'}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *521 @ref C1 l154
    *brace_arg C5
    |EXTRA
    |node_content:{@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
    |normalized:{AAA-AAA-BBB}
     *522 @acronym C2 l154
      *brace_arg C1
       {AAA}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {fff}
     { }
     *523 @acronym C1 l154
      *brace_arg C1
       {AAA}
     { }
     *524 @acronym C1 l154
      *brace_arg C1
       {BBB}
   {\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;4><p:1>
   >*@ifnottex C1 l156
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C2
   *525 @ref C1 l157
    *brace_arg C5
    |EXTRA
    |node_content:{@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
    |normalized:{CCC-CCC-DDD}
     *526 @abbr C2 l157
      *brace_arg C1
       {CCC}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {rrr}
     { }
     *527 @abbr C1 l157
      *brace_arg C1
       {CCC}
     { }
     *528 @abbr C1 l157
      *brace_arg C1
       {DDD}
   {\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;4><p:1>
    >*@end C1 l158
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
  *paragraph C2
   *529 @ref C1 l160
    *brace_arg C3
    |EXTRA
    |node_content:{@email{someone@@somewher, the someone} @email{no_explain@@there}}
    |normalized:{someone_0040somewher-no_005fexplain_0040there}
     *530 @email C2 l160
      *brace_arg C3
       {someone}
       *@@
       {somewher}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {the someone}
     { }
     *531 @email C1 l160
      *brace_arg C3
       {no_explain}
       *@@
       {there}
   {\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;5><p:1>
   >*@ifnottex C1 l162
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C2
   *532 @ref C1 l163
    *brace_arg C3
    |EXTRA
    |node_content:{@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
    |normalized:{f_002d_002dile1-f_002d_002dile}
     *533 @image C1 l163
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile1}
     {  }
     *534 @image C5 l163
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile}
      *brace_arg C1
       {aze}
      *brace_arg C1
       {az}
      *brace_arg C1
       {alt}
      *brace_arg C1
       {e--xt}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *535 @ref C1 l165
    *brace_arg C1
    |EXTRA
    |node_content:{@verb{. @ {} . .}}
    |normalized:{-_0040-_007b_007d-_002e-}
     *536 @verb C1 l165
     |INFO
     |delimiter:{.}
      *brace_container C1
       {raw: @ {} . }
   {\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;5><p:1>
    >*@end C1 l166
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
  *paragraph C2
   *537 @ref C1 l168
    *brace_arg C17
    |EXTRA
    |node_content:{@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
    |normalized:{cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i}
     *538 @cite C1 l168
      *brace_container C2
       {cite }
       *539 @asis C1 l168
        *brace_container C1
         {asis}
     { }
     *540 @w C1 l168
      *brace_container C4
       {in }
       *@@
       {w }
       *541 @b C1 l168
        *brace_container C1
         {b}
     { }
     *542 @r C1 l168
      *brace_container C1
       {in r}
     { }
     *543 @sc C1 l168
      *brace_container C1
       {sc}
     { }
     *544 @strong C1 l168
      *brace_container C1
       {str}
     { }
     *545 @t C1 l168
      *brace_container C1
       {t}
     { }
     *546 @var C1 l168
      *brace_container C1
       {var}
     { }
     *547 @dfn C1 l168
      *brace_container C1
       {dfn}
     { }
     *548 @i C1 l168
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *549 @ref C1 l170
    *brace_arg C13
    |EXTRA
    |node_content:{@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
    |normalized:{env-code-option-samp-command-file-C_002dx-ESC}
     *550 @env C1 l170
      *brace_container C1
       {env}
     { }
     *551 @code C1 l170
      *brace_container C1
       {code}
     { }
     *552 @option C1 l170
      *brace_container C1
       {option}
     { }
     *553 @samp C1 l170
      *brace_container C1
       {samp}
     { }
     *554 @command C1 l170
      *brace_container C1
       {command}
     { }
     *555 @file C1 l170
      *brace_container C1
       {file}
     { }
     *556 @kbd C1 l170
      *brace_container C2
       {C-x }
       *557 @key C1 l170
        *brace_container C1
         {ESC}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *558 @ref C1 l172
    *brace_arg C2
    |EXTRA
    |node_content:{8.27@dmn{in}}
    |normalized:{8_002e27in}
     {8.27}
     *559 @dmn C1 l172
      *brace_container C1
       {in}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *560 @ref C1 l174
    *brace_arg C3
    |EXTRA
    |node_content:{@sansserif{sansserif} @slanted{slanted}}
    |normalized:{sansserif-slanted}
     *561 @sansserif C1 l174
      *brace_container C1
       {sansserif}
     { }
     *562 @slanted C1 l174
      *brace_container C1
       {slanted}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *563 @ref C1 l176
    *brace_arg C1
    |EXTRA
    |node_content:{@indicateurl{indicateurl}}
    |normalized:{indicateurl}
     *564 @indicateurl C1 l176
      *brace_container C1
       {indicateurl}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *565 @ref C1 l178
    *brace_arg C3
    |EXTRA
    |node_content:{@sub{g}H 3@sup{rd}}
    |normalized:{gH-3rd}
     *566 @sub C1 l178
      *brace_container C1
       {g}
     {H 3}
     *567 @sup C1 l178
      *brace_container C1
       {rd}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *568 @ref C1 l180
    *brace_arg C5
    |EXTRA
    |node_content:{@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
    |normalized:{http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls}
     *569 @url C1 l180
      *brace_arg C1
       {http://somewhere_aaa}
     { }
     *570 @url C2 l180
      *brace_arg C1
       {url}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {text}
     { }
     *571 @uref C3 l180
      *brace_arg C1
       {/man.cgi/1/ls}
      *brace_arg
      *brace_arg C1
       {ls}
   {\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'at_commands_in_refs_utf8'} = '@setfilename at_commands_in_refs_utf8.info
@documentencoding utf-8

@node Top
@top Top

@menu
* @- @{ @}::
* @  @	 @! @* @. @: .@: @? @@::
* @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}::
* @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}::
* @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}::
* @geq{} @leq{} @arrow{}::
* @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}::
* @result{} @textdegree{} a@tie{}b @today{} @aa{}::
* @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}::
* @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}::
* @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}::
* @dotless{i} @`{@=E} @,{@\'C}::
* @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}::
* @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}::
* `` \'\' --- -- ` \'::
* @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}::
* @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}::
* @email{someone@@somewher, the someone} @email{no_explain@@there}::
* @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}::
* @verb{. @ {} . .}::
* @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}::
* @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}::
* 8.27@dmn{in}::
* @sansserif{sansserif} @slanted{slanted}::
* @indicateurl{indicateurl}::
* @sub{g}H 3@sup{rd}::
* @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}::
@end menu

@node @- @{ @}
@chapter @- @{ @}

@node @  @	 @! @* @. @: .@: @? @@
@chapter @  @	 @! @* @. @: .@: @? @@

@node @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
@chapter @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}

@node @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
@chapter @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}

@node @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
@chapter @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}

@node @geq{} @leq{} @arrow{}
@chapter @geq{} @leq{} @arrow{}

@node @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
@chapter @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}

@node @result{} @textdegree{} a@tie{}b @today{} @aa{}
@chapter @result{} @textdegree{} a@tie{}b @today{} @aa{}

@node @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{} 
@chapter @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{} 

@node @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
@chapter  @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}

@node @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
@chapter @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}

@node @dotless{i} @`{@=E} @,{@\'C}
@chapter @dotless{i} @`{@=E} @,{@\'C}

@node @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
@chapter @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}

@node @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
@chapter @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}

@node `` \'\' --- -- ` \'
@chapter `` \'\' --- -- ` \'

@node @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
@chapter @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}

@node @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
@chapter @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}

@node @email{someone@@somewher, the someone} @email{no_explain@@there}
@chapter @email{someone@@somewher, the someone} @email{no_explain@@there}

@node @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
@chapter @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}

@node @verb{. @ {} . .}
@chapter @verb{. @ {} . .}

@node @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
@chapter @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}

@node @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
@chapter @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}

@node 8.27@dmn{in}
@chapter 8.27@dmn{in}

@node @sansserif{sansserif} @slanted{slanted}
@chapter @sansserif{sansserif} @slanted{slanted}

@node @indicateurl{indicateurl}
@chapter @indicateurl{indicateurl}

@node @sub{g}H 3@sup{rd}
@chapter @sub{g}H 3@sup{rd}

@node @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
@chapter @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}

@ref{@- @{ @}}

@ref{@  @	 @! @* @. @: .@: @? @@}

@ref{@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}

@ref{@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}

@ref{@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}

@ref{@geq{} @leq{} @arrow{}}

@ref{@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}

@ref{@result{} @textdegree{} a@tie{}b @today{} @aa{}}

@ref{@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}

@ref{@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}

@ref{@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}

@ref{@dotless{i} @`{@=E} @,{@\'C}}

@ref{@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}

@ref{@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}

@ref{`` \'\' --- -- ` \'}

@ref{@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}

@ref{@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}

@ref{@email{someone@@somewher, the someone} @email{no_explain@@there}}

@ref{@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}

@ref{@verb{. @ {} . .}}

@ref{@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}

@ref{@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}

@ref{8.27@dmn{in}}

@ref{@sansserif{sansserif} @slanted{slanted}}

@ref{@indicateurl{indicateurl}}

@ref{@sub{g}H 3@sup{rd}}

@ref{@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}

@bye
';


$result_texts{'at_commands_in_refs_utf8'} = '
Top
***

*  { }::
*     ! 
 .  . ? @::
* @ { } \\ #::
* LaTeX TeX * , (C) ... ...::
* == error--> Euro ! ==> -::
* >= <= ->::
* a o -!- # -| ? (R)::
* => o a b a sunny day aa::
* AA ae oe AE OE /o /O ss /l /L D d TH th::
* a" e~ i^ a^ a` e\' c, e= e* e\'\' e;::
* e. e( e_ .e e< j ee[::
* i E=` C\',::
* " " ` \' ,, ,::
* << >> << >> < >::
* `` \'\' --- -- ` \'::
* AAA (fff) AAA BBB::
* CCC (rrr) CCC DDD::
* the someone no_explain@there::
* f--ile1  f--ile::
*  @ {} . ::
* cite asis in @w b in r SC str t var dfn i::
* env code option samp command file C-x ESC::
* 8.27in::
* sansserif slanted::
* indicateurl::
* gH 3rd::
* http://somewhere_aaa url (text) ls::

1  { }
******

2     ! 
 .  . ? @
*****************

3 @ { } \\ #
***********

4 LaTeX TeX * , (C) ... ...
***************************

5 == error--> Euro ! ==> -
**************************

6 >= <= ->
**********

7 a o -!- # -| ? (R)
********************

8 => o a b a sunny day aa
*************************

9 AA ae oe AE OE /o /O ss /l /L D d TH th
*****************************************

10 a" e~ i^ a^ a` e\' c, e= e* e\'\' e;
************************************

11 e. e( e_ .e e< j ee[
***********************

12 i E=` C\',
************

13 " " ` \' ,, ,
***************

14 << >> << >> < >
******************

15 " " -- - ` \'
***************

16 AAA (fff) AAA BBB
********************

17 CCC (rrr) CCC DDD
********************

18 the someone no_explain@there
*******************************

19 f--ile1  f--ile
******************

20  @ {} . 
***********

21 cite asis in @w b in r SC str t var dfn i
********************************************

22 env code option samp command file C-x ESC
********************************************

23 8.27in
*********

24 sansserif slanted
********************

25 indicateurl
**************

26 gH 3rd
*********

27 http://somewhere_aaa url (text) ls
*************************************

 { }

    ! 
 .  . ? @

@ { } \\ #

LaTeX TeX * , (C) ... ...

== error--> Euro ! ==> -

>= <= ->

a o -!- # -| ? (R)

=> o a b a sunny day aa

AA ae oe AE OE /o /O ss /l /L D d TH th

a" e~ i^ a^ a` e\' c, e= e* e\'\' e;

e. e( e_ .e e< j ee[

i E=` C\',

" " ` \' ,, ,

<< >> << >> < >

" " -- - ` \'

AAA (fff) AAA BBB

CCC (rrr) CCC DDD

the someone no_explain@there

f--ile1  f--ile

 @ {} . 

cite asis in @w b in r SC str t var dfn i

env code option samp command file C-x ESC

8.27in

sansserif slanted

indicateurl

gH 3rd

http://somewhere_aaa url (text) ls

';

$result_errors{'at_commands_in_refs_utf8'} = [
  {
    'error_line' => 'warning: @verb should not appear on @node line
',
    'line_nr' => 98,
    'text' => '@verb should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear on @chapter line
',
    'line_nr' => 100,
    'text' => '@verb should not appear on @chapter line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @ref
',
    'line_nr' => 165,
    'text' => '@verb should not appear anywhere inside @ref',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_html'}->{'at_commands_in_refs_utf8'} = [
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 93,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 93,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 163,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'at_commands_in_refs_utf8'} = [
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 26,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: menu entry node name should not contain `:\'
',
    'line_nr' => 34,
    'text' => 'menu entry node name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@node name should not contain `,': LaTeX TeX \x{2022} , \x{a9} ... ...
",
    'line_nr' => 46,
    'text' => "\@node name should not contain `,': LaTeX TeX \x{2022} , \x{a9} ... ...",
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 93,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 95,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 93,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'line_nr' => 180,
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];


1;
