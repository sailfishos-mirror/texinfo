use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

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
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |node_number:{1}
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
 |section_childs:EC[E4|E6|E8|E10|E12|E14|E16|E18|E20|E22|E24|E26|E28|E30|E32|E34|E36|E38|E40|E42|E44|E46|E48|E50|E52|E54|E56]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
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
     *@atchar C1 l10
      *brace_container
     { }
     *@lbracechar C1 l10
      *brace_container
     { }
     *@rbracechar C1 l10
      *brace_container
     { }
     *@backslashchar C1 l10
      *brace_container
     { }
     *@hashchar C1 l10
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
     *@LaTeX C1 l11
      *brace_container
     { }
     *@TeX C1 l11
      *brace_container
     { }
     *@bullet C1 l11
      *brace_container
     { }
     *@comma C1 l11
      *brace_container
     { }
     *@copyright C1 l11
      *brace_container
     { }
     *@dots C1 l11
      *brace_container
     { }
     *@enddots C1 l11
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
     *@equiv C1 l12
      *brace_container
     { }
     *@error C1 l12
      *brace_container
     { }
     *@euro C1 l12
      *brace_container
     { }
     *@exclamdown C1 l12
      *brace_container
     { }
     *@expansion C1 l12
      *brace_container
     { }
     *@minus C1 l12
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
     *@geq C1 l13
      *brace_container
     { }
     *@leq C1 l13
      *brace_container
     { }
     *@arrow C1 l13
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
     *@ordf C1 l14
      *brace_container
     { }
     *@ordm C1 l14
      *brace_container
     { }
     *@point C1 l14
      *brace_container
     { }
     *@pounds C1 l14
      *brace_container
     { }
     *@print C1 l14
      *brace_container
     { }
     *@questiondown C1 l14
      *brace_container
     { }
     *@registeredsymbol C1 l14
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
     *@result C1 l15
      *brace_container
     { }
     *@textdegree C1 l15
      *brace_container
     { a}
     *@tie C1 l15
      *brace_container
     {b }
     *@today C1 l15
      *brace_container
     { }
     *@aa C1 l15
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
     *@AA C1 l16
      *brace_container
     { }
     *@ae C1 l16
      *brace_container
     { }
     *@oe C1 l16
      *brace_container
     { }
     *@AE C1 l16
      *brace_container
     { }
     *@OE C1 l16
      *brace_container
     { }
     *@o C1 l16
      *brace_container
     { }
     *@O C1 l16
      *brace_container
     { }
     *@ss C1 l16
      *brace_container
     { }
     *@l C1 l16
      *brace_container
     { }
     *@L C1 l16
      *brace_container
     { }
     *@DH C1 l16
      *brace_container
     { }
     *@dh C1 l16
      *brace_container
     { }
     *@TH C1 l16
      *brace_container
     { }
     *@th C1 l16
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
     *@" C1 l17
      *brace_container C1
       {a}
     { }
     *@~ C1 l17
      *brace_container C1
       {e}
     { }
     *@^ C1 l17
      *brace_container C1
       *@dotless C1 l17
        *brace_container C1
         {i}
     { }
     *@^ C1 l17
      *brace_container C1
       {a}
     { }
     *@` C1 l17
      *brace_container C1
       {a}
     { }
     *@\' C1 l17
      *following_arg C1
       {e}
     { }
     *@, C1 l17
      *brace_container C1
       {c}
     { }
     *@= C1 l17
      *brace_container C1
       {e}
     { }
     *@ringaccent C1 l17
      *brace_container C1
       {e}
     { }
     *@H C1 l17
      *brace_container C1
       {e}
     { }
     *@ogonek C1 l17
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
     *@dotaccent C1 l18
      *brace_container C1
       {e}
     { }
     *@u C1 l18
      *brace_container C1
       {e}
     { }
     *@ubaraccent C1 l18
      *brace_container C1
       {e}
     { }
     *@udotaccent C1 l18
      *brace_container C1
       {e}
     { }
     *@v C1 l18
      *brace_container C1
       {e}
     { }
     *@dotless C1 l18
      *brace_container C1
       {j}
     { }
     *@tieaccent C1 l18
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
     *@dotless C1 l19
      *brace_container C1
       {i}
     { }
     *@` C1 l19
      *brace_container C1
       *@= C1 l19
        *following_arg C1
         {E}
     { }
     *@, C1 l19
      *brace_container C1
       *@\' C1 l19
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
     *@quotedblleft C1 l20
      *brace_container
     { }
     *@quotedblright C1 l20
      *brace_container
     { }
     *@quoteleft C1 l20
      *brace_container
     { }
     *@quoteright C1 l20
      *brace_container
     { }
     *@quotedblbase C1 l20
      *brace_container
     { }
     *@quotesinglbase C1 l20
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
     *@guillemetleft C1 l21
      *brace_container
     { }
     *@guillemetright C1 l21
      *brace_container
     { }
     *@guillemotleft C1 l21
      *brace_container
     { }
     *@guillemotright C1 l21
      *brace_container
     { }
     *@guilsinglleft C1 l21
      *brace_container
     { }
     *@guilsinglright C1 l21
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
     *@acronym C2 l23
      *brace_arg C1
       {AAA}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {fff}
     { }
     *@acronym C1 l23
      *brace_arg C1
       {AAA}
     { }
     *@acronym C1 l23
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
     *@abbr C2 l24
      *brace_arg C1
       {CCC}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {rrr}
     { }
     *@abbr C1 l24
      *brace_arg C1
       {CCC}
     { }
     *@abbr C1 l24
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
     *@email C2 l25
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
     *@email C1 l25
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
     *@image C1 l26
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile1}
     {  }
     *@image C5 l26
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
     *@verb C1 l27
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
     *@cite C1 l28
      *brace_container C2
       {cite }
       *@asis C1 l28
        *brace_container C1
         {asis}
     { }
     *@w C1 l28
      *brace_container C4
       {in }
       *@@
       {w }
       *@b C1 l28
        *brace_container C1
         {b}
     { }
     *@r C1 l28
      *brace_container C1
       {in r}
     { }
     *@sc C1 l28
      *brace_container C1
       {sc}
     { }
     *@strong C1 l28
      *brace_container C1
       {str}
     { }
     *@t C1 l28
      *brace_container C1
       {t}
     { }
     *@var C1 l28
      *brace_container C1
       {var}
     { }
     *@dfn C1 l28
      *brace_container C1
       {dfn}
     { }
     *@i C1 l28
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
     *@env C1 l29
      *brace_container C1
       {env}
     { }
     *@code C1 l29
      *brace_container C1
       {code}
     { }
     *@option C1 l29
      *brace_container C1
       {option}
     { }
     *@samp C1 l29
      *brace_container C1
       {samp}
     { }
     *@command C1 l29
      *brace_container C1
       {command}
     { }
     *@file C1 l29
      *brace_container C1
       {file}
     { }
     *@kbd C1 l29
      *brace_container C2
       {C-x }
       *@key C1 l29
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
     *@dmn C1 l30
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
     *@sansserif C1 l31
      *brace_container C1
       {sansserif}
     { }
     *@slanted C1 l31
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
     *@indicateurl C1 l32
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
     *@sub C1 l33
      *brace_container C1
       {g}
     {H 3}
     *@sup C1 l33
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
     *@url C1 l34
      *brace_arg C1
       {http://somewhere_aaa}
     { }
     *@url C2 l34
      *brace_arg C1
       {url}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {text}
     { }
     *@uref C3 l34
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
 *3 @node C1 l37 {@- @{ @}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_number:{2}
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
 *4 @chapter C2 l38 {@- @{ @}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
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
 *5 @node C1 l40 {@  @	 @! @* @. @: .@: @? @@}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E7|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |node_number:{3}
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
 *6 @chapter C2 l41 {@  @	 @! @* @. @: .@: @? @@}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
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
 *7 @node C1 l43 {@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E5|up->E0]
 |node_directions:D[next->E9|prev->E5|up->E0]
 |node_number:{4}
 |normalized:{_0040-_007b-_007d-_005c-_0023}
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@atchar C1 l43
     *brace_container
    { }
    *@lbracechar C1 l43
     *brace_container
    { }
    *@rbracechar C1 l43
     *brace_container
    { }
    *@backslashchar C1 l43
     *brace_container
    { }
    *@hashchar C1 l43
     *brace_container
 *8 @chapter C2 l44 {@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@atchar C1 l44
     *brace_container
    { }
    *@lbracechar C1 l44
     *brace_container
    { }
    *@rbracechar C1 l44
     *brace_container
    { }
    *@backslashchar C1 l44
     *brace_container
    { }
    *@hashchar C1 l44
     *brace_container
  {empty_line:\\n}
 *9 @node C1 l46 {@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E11|prev->E7|up->E0]
 |node_directions:D[next->E11|prev->E7|up->E0]
 |node_number:{5}
 |normalized:{LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@LaTeX C1 l46
     *brace_container
    { }
    *@TeX C1 l46
     *brace_container
    { }
    *@bullet C1 l46
     *brace_container
    { }
    *@comma C1 l46
     *brace_container
    { }
    *@copyright C1 l46
     *brace_container
    { }
    *@dots C1 l46
     *brace_container
    { }
    *@enddots C1 l46
     *brace_container
 *10 @chapter C2 l47 {@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_heading_number:{4}
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@LaTeX C1 l47
     *brace_container
    { }
    *@TeX C1 l47
     *brace_container
    { }
    *@bullet C1 l47
     *brace_container
    { }
    *@comma C1 l47
     *brace_container
    { }
    *@copyright C1 l47
     *brace_container
    { }
    *@dots C1 l47
     *brace_container
    { }
    *@enddots C1 l47
     *brace_container
  {empty_line:\\n}
 *11 @node C1 l49 {@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E9|up->E0]
 |node_directions:D[next->E13|prev->E9|up->E0]
 |node_number:{6}
 |normalized:{_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@equiv C1 l49
     *brace_container
    { }
    *@error C1 l49
     *brace_container
    { }
    *@euro C1 l49
     *brace_container
    { }
    *@exclamdown C1 l49
     *brace_container
    { }
    *@expansion C1 l49
     *brace_container
    { }
    *@minus C1 l49
     *brace_container
 *12 @chapter C2 l50 {@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E14|prev->E10|up->E1]
 |section_heading_number:{5}
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[next->E14|prev->E10|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@equiv C1 l50
     *brace_container
    { }
    *@error C1 l50
     *brace_container
    { }
    *@euro C1 l50
     *brace_container
    { }
    *@exclamdown C1 l50
     *brace_container
    { }
    *@expansion C1 l50
     *brace_container
    { }
    *@minus C1 l50
     *brace_container
  {empty_line:\\n}
 *13 @node C1 l52 {@geq{} @leq{} @arrow{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E15|prev->E11|up->E0]
 |node_directions:D[next->E15|prev->E11|up->E0]
 |node_number:{7}
 |normalized:{_2265-_2264-_2192}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@geq C1 l52
     *brace_container
    { }
    *@leq C1 l52
     *brace_container
    { }
    *@arrow C1 l52
     *brace_container
 *14 @chapter C2 l53 {@geq{} @leq{} @arrow{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E16|prev->E12|up->E1]
 |section_heading_number:{6}
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[next->E16|prev->E12|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@geq C1 l53
     *brace_container
    { }
    *@leq C1 l53
     *brace_container
    { }
    *@arrow C1 l53
     *brace_container
  {empty_line:\\n}
 *15 @node C1 l55 {@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E17|prev->E13|up->E0]
 |node_directions:D[next->E17|prev->E13|up->E0]
 |node_number:{8}
 |normalized:{_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ordf C1 l55
     *brace_container
    { }
    *@ordm C1 l55
     *brace_container
    { }
    *@point C1 l55
     *brace_container
    { }
    *@pounds C1 l55
     *brace_container
    { }
    *@print C1 l55
     *brace_container
    { }
    *@questiondown C1 l55
     *brace_container
    { }
    *@registeredsymbol C1 l55
     *brace_container
 *16 @chapter C2 l56 {@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E18|prev->E14|up->E1]
 |section_heading_number:{7}
 |section_level:{1}
 |section_number:{8}
 |toplevel_directions:D[next->E18|prev->E14|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ordf C1 l56
     *brace_container
    { }
    *@ordm C1 l56
     *brace_container
    { }
    *@point C1 l56
     *brace_container
    { }
    *@pounds C1 l56
     *brace_container
    { }
    *@print C1 l56
     *brace_container
    { }
    *@questiondown C1 l56
     *brace_container
    { }
    *@registeredsymbol C1 l56
     *brace_container
  {empty_line:\\n}
 *17 @node C1 l58 {@result{} @textdegree{} a@tie{}b @today{} @aa{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E19|prev->E15|up->E0]
 |node_directions:D[next->E19|prev->E15|up->E0]
 |node_number:{9}
 |normalized:{_21d2-_00b0-a-b-_00e5}
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@result C1 l58
     *brace_container
    { }
    *@textdegree C1 l58
     *brace_container
    { a}
    *@tie C1 l58
     *brace_container
    {b }
    *@today C1 l58
     *brace_container
    { }
    *@aa C1 l58
     *brace_container
 *18 @chapter C2 l59 {@result{} @textdegree{} a@tie{}b @today{} @aa{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E20|prev->E16|up->E1]
 |section_heading_number:{8}
 |section_level:{1}
 |section_number:{9}
 |toplevel_directions:D[next->E20|prev->E16|up->E1]
  *arguments_line C1
   *line_arg C9
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@result C1 l59
     *brace_container
    { }
    *@textdegree C1 l59
     *brace_container
    { a}
    *@tie C1 l59
     *brace_container
    {b }
    *@today C1 l59
     *brace_container
    { }
    *@aa C1 l59
     *brace_container
  {empty_line:\\n}
 *19 @node C1 l61 {@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E21|prev->E17|up->E0]
 |node_directions:D[next->E21|prev->E17|up->E0]
 |node_number:{10}
 |normalized:{_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe}
  *arguments_line C1
   *line_arg C27
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *@AA C1 l61
     *brace_container
    { }
    *@ae C1 l61
     *brace_container
    { }
    *@oe C1 l61
     *brace_container
    { }
    *@AE C1 l61
     *brace_container
    { }
    *@OE C1 l61
     *brace_container
    { }
    *@o C1 l61
     *brace_container
    { }
    *@O C1 l61
     *brace_container
    { }
    *@ss C1 l61
     *brace_container
    { }
    *@l C1 l61
     *brace_container
    { }
    *@L C1 l61
     *brace_container
    { }
    *@DH C1 l61
     *brace_container
    { }
    *@dh C1 l61
     *brace_container
    { }
    *@TH C1 l61
     *brace_container
    { }
    *@th C1 l61
     *brace_container
 *20 @chapter C2 l62 {@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E22|prev->E18|up->E1]
 |section_heading_number:{9}
 |section_level:{1}
 |section_number:{10}
 |toplevel_directions:D[next->E22|prev->E18|up->E1]
  *arguments_line C1
   *line_arg C27
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *@AA C1 l62
     *brace_container
    { }
    *@ae C1 l62
     *brace_container
    { }
    *@oe C1 l62
     *brace_container
    { }
    *@AE C1 l62
     *brace_container
    { }
    *@OE C1 l62
     *brace_container
    { }
    *@o C1 l62
     *brace_container
    { }
    *@O C1 l62
     *brace_container
    { }
    *@ss C1 l62
     *brace_container
    { }
    *@l C1 l62
     *brace_container
    { }
    *@L C1 l62
     *brace_container
    { }
    *@DH C1 l62
     *brace_container
    { }
    *@dh C1 l62
     *brace_container
    { }
    *@TH C1 l62
     *brace_container
    { }
    *@th C1 l62
     *brace_container
  {empty_line:\\n}
 *21 @node C1 l64 {@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E23|prev->E19|up->E0]
 |node_directions:D[next->E23|prev->E19|up->E0]
 |node_number:{11}
 |normalized:{_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119}
  *arguments_line C1
   *line_arg C21
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@" C1 l64
     *brace_container C1
      {a}
    { }
    *@~ C1 l64
     *brace_container C1
      {e}
    { }
    *@^ C1 l64
     *brace_container C1
      *@dotless C1 l64
       *brace_container C1
        {i}
    { }
    *@^ C1 l64
     *brace_container C1
      {a}
    { }
    *@` C1 l64
     *brace_container C1
      {a}
    { }
    *@\' C1 l64
     *following_arg C1
      {e}
    { }
    *@, C1 l64
     *brace_container C1
      {c}
    { }
    *@= C1 l64
     *brace_container C1
      {e}
    { }
    *@ringaccent C1 l64
     *brace_container C1
      {e}
    { }
    *@H C1 l64
     *brace_container C1
      {e}
    { }
    *@ogonek C1 l64
     *brace_container C1
      {e}
 *22 @chapter C2 l65 {@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |section_directions:D[next->E24|prev->E20|up->E1]
 |section_heading_number:{10}
 |section_level:{1}
 |section_number:{11}
 |toplevel_directions:D[next->E24|prev->E20|up->E1]
  *arguments_line C1
   *line_arg C21
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@" C1 l65
     *brace_container C1
      {a}
    { }
    *@~ C1 l65
     *brace_container C1
      {e}
    { }
    *@^ C1 l65
     *brace_container C1
      *@dotless C1 l65
       *brace_container C1
        {i}
    { }
    *@^ C1 l65
     *brace_container C1
      {a}
    { }
    *@` C1 l65
     *brace_container C1
      {a}
    { }
    *@\' C1 l65
     *following_arg C1
      {e}
    { }
    *@, C1 l65
     *brace_container C1
      {c}
    { }
    *@= C1 l65
     *brace_container C1
      {e}
    { }
    *@ringaccent C1 l65
     *brace_container C1
      {e}
    { }
    *@H C1 l65
     *brace_container C1
      {e}
    { }
    *@ogonek C1 l65
     *brace_container C1
      {e}
  {empty_line:\\n}
 *23 @node C1 l67 {@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E21|up->E0]
 |node_directions:D[next->E25|prev->E21|up->E0]
 |node_number:{12}
 |normalized:{_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@dotaccent C1 l67
     *brace_container C1
      {e}
    { }
    *@u C1 l67
     *brace_container C1
      {e}
    { }
    *@ubaraccent C1 l67
     *brace_container C1
      {e}
    { }
    *@udotaccent C1 l67
     *brace_container C1
      {e}
    { }
    *@v C1 l67
     *brace_container C1
      {e}
    { }
    *@dotless C1 l67
     *brace_container C1
      {j}
    { }
    *@tieaccent C1 l67
     *brace_container C1
      {ee}
 *24 @chapter C2 l68 {@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E26|prev->E22|up->E1]
 |section_heading_number:{11}
 |section_level:{1}
 |section_number:{12}
 |toplevel_directions:D[next->E26|prev->E22|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@dotaccent C1 l68
     *brace_container C1
      {e}
    { }
    *@u C1 l68
     *brace_container C1
      {e}
    { }
    *@ubaraccent C1 l68
     *brace_container C1
      {e}
    { }
    *@udotaccent C1 l68
     *brace_container C1
      {e}
    { }
    *@v C1 l68
     *brace_container C1
      {e}
    { }
    *@dotless C1 l68
     *brace_container C1
      {j}
    { }
    *@tieaccent C1 l68
     *brace_container C1
      {ee}
  {empty_line:\\n}
 *25 @node C1 l70 {@dotless{i} @`{@=E} @,{@\'C}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E27|prev->E23|up->E0]
 |node_directions:D[next->E27|prev->E23|up->E0]
 |node_number:{13}
 |normalized:{_0131-_1e14-_1e08}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@dotless C1 l70
     *brace_container C1
      {i}
    { }
    *@` C1 l70
     *brace_container C1
      *@= C1 l70
       *following_arg C1
        {E}
    { }
    *@, C1 l70
     *brace_container C1
      *@\' C1 l70
       *following_arg C1
        {C}
 *26 @chapter C2 l71 {@dotless{i} @`{@=E} @,{@\'C}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E28|prev->E24|up->E1]
 |section_heading_number:{12}
 |section_level:{1}
 |section_number:{13}
 |toplevel_directions:D[next->E28|prev->E24|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@dotless C1 l71
     *brace_container C1
      {i}
    { }
    *@` C1 l71
     *brace_container C1
      *@= C1 l71
       *following_arg C1
        {E}
    { }
    *@, C1 l71
     *brace_container C1
      *@\' C1 l71
       *following_arg C1
        {C}
  {empty_line:\\n}
 *27 @node C1 l73 {@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E29|prev->E25|up->E0]
 |node_directions:D[next->E29|prev->E25|up->E0]
 |node_number:{14}
 |normalized:{_201c-_201d-_2018-_2019-_201e-_201a}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@quotedblleft C1 l73
     *brace_container
    { }
    *@quotedblright C1 l73
     *brace_container
    { }
    *@quoteleft C1 l73
     *brace_container
    { }
    *@quoteright C1 l73
     *brace_container
    { }
    *@quotedblbase C1 l73
     *brace_container
    { }
    *@quotesinglbase C1 l73
     *brace_container
 *28 @chapter C2 l74 {@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E30|prev->E26|up->E1]
 |section_heading_number:{13}
 |section_level:{1}
 |section_number:{14}
 |toplevel_directions:D[next->E30|prev->E26|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@quotedblleft C1 l74
     *brace_container
    { }
    *@quotedblright C1 l74
     *brace_container
    { }
    *@quoteleft C1 l74
     *brace_container
    { }
    *@quoteright C1 l74
     *brace_container
    { }
    *@quotedblbase C1 l74
     *brace_container
    { }
    *@quotesinglbase C1 l74
     *brace_container
  {empty_line:\\n}
 *29 @node C1 l76 {@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E31|prev->E27|up->E0]
 |node_directions:D[next->E31|prev->E27|up->E0]
 |node_number:{15}
 |normalized:{_00ab-_00bb-_00ab-_00bb-_2039-_203a}
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@guillemetleft C1 l76
     *brace_container
    { }
    *@guillemetright C1 l76
     *brace_container
    { }
    *@guillemotleft C1 l76
     *brace_container
    { }
    *@guillemotright C1 l76
     *brace_container
    { }
    *@guilsinglleft C1 l76
     *brace_container
    { }
    *@guilsinglright C1 l76
     *brace_container
 *30 @chapter C2 l77 {@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E32|prev->E28|up->E1]
 |section_heading_number:{14}
 |section_level:{1}
 |section_number:{15}
 |toplevel_directions:D[next->E32|prev->E28|up->E1]
  *arguments_line C1
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@guillemetleft C1 l77
     *brace_container
    { }
    *@guillemetright C1 l77
     *brace_container
    { }
    *@guillemotleft C1 l77
     *brace_container
    { }
    *@guillemotright C1 l77
     *brace_container
    { }
    *@guilsinglleft C1 l77
     *brace_container
    { }
    *@guilsinglright C1 l77
     *brace_container
  {empty_line:\\n}
 *31 @node C1 l79 {`` \'\' --- -- ` \'}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E33|prev->E29|up->E0]
 |node_directions:D[next->E33|prev->E29|up->E0]
 |node_number:{16}
 |normalized:{_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {`` \'\' --- -- ` \'}
 *32 @chapter C2 l80 {`` \'\' --- -- ` \'}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E34|prev->E30|up->E1]
 |section_heading_number:{15}
 |section_level:{1}
 |section_number:{16}
 |toplevel_directions:D[next->E34|prev->E30|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {`` \'\' --- -- ` \'}
  {empty_line:\\n}
 *33 @node C1 l82 {@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E35|prev->E31|up->E0]
 |node_directions:D[next->E35|prev->E31|up->E0]
 |node_number:{17}
 |normalized:{AAA-AAA-BBB}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@acronym C2 l82
     *brace_arg C1
      {AAA}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {fff}
    { }
    *@acronym C1 l82
     *brace_arg C1
      {AAA}
    { }
    *@acronym C1 l82
     *brace_arg C1
      {BBB}
 *34 @chapter C2 l83 {@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E36|prev->E32|up->E1]
 |section_heading_number:{16}
 |section_level:{1}
 |section_number:{17}
 |toplevel_directions:D[next->E36|prev->E32|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@acronym C2 l83
     *brace_arg C1
      {AAA}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {fff}
    { }
    *@acronym C1 l83
     *brace_arg C1
      {AAA}
    { }
    *@acronym C1 l83
     *brace_arg C1
      {BBB}
  {empty_line:\\n}
 *35 @node C1 l85 {@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E37|prev->E33|up->E0]
 |node_directions:D[next->E37|prev->E33|up->E0]
 |node_number:{18}
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
    *@abbr C2 l85
     *brace_arg C1
      {CCC}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {rrr}
    { }
    *@abbr C1 l85
     *brace_arg C1
      {CCC}
    { }
    *@abbr C1 l85
     *brace_arg C1
      {DDD}
 *36 @chapter C2 l87 {@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E38|prev->E34|up->E1]
 |section_heading_number:{17}
 |section_level:{1}
 |section_number:{18}
 |toplevel_directions:D[next->E38|prev->E34|up->E1]
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
    *@abbr C2 l87
     *brace_arg C1
      {CCC}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {rrr}
    { }
    *@abbr C1 l87
     *brace_arg C1
      {CCC}
    { }
    *@abbr C1 l87
     *brace_arg C1
      {DDD}
  {empty_line:\\n}
 *37 @node C1 l90 {@email{someone@@somewher, the someone} @email{no_explain@@there}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E39|prev->E35|up->E0]
 |node_directions:D[next->E39|prev->E35|up->E0]
 |node_number:{19}
 |normalized:{someone_0040somewher-no_005fexplain_0040there}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@email C2 l90
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
    *@email C1 l90
     *brace_arg C3
      {no_explain}
      *@@
      {there}
 *38 @chapter C2 l91 {@email{someone@@somewher, the someone} @email{no_explain@@there}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E40|prev->E36|up->E1]
 |section_heading_number:{18}
 |section_level:{1}
 |section_number:{19}
 |toplevel_directions:D[next->E40|prev->E36|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@email C2 l91
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
    *@email C1 l91
     *brace_arg C3
      {no_explain}
      *@@
      {there}
  {empty_line:\\n}
 *39 @node C1 l93 {@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E41|prev->E37|up->E0]
 |node_directions:D[next->E41|prev->E37|up->E0]
 |node_number:{20}
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
    *@image C1 l93
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile1}
    {  }
    *@image C5 l93
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
 *40 @chapter C2 l95 {@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E42|prev->E38|up->E1]
 |section_heading_number:{19}
 |section_level:{1}
 |section_number:{20}
 |toplevel_directions:D[next->E42|prev->E38|up->E1]
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
    *@image C1 l95
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile1}
    {  }
    *@image C5 l95
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
 *41 @node C1 l98 {@verb{. @ {} . .}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E43|prev->E39|up->E0]
 |node_directions:D[next->E43|prev->E39|up->E0]
 |node_number:{21}
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
    *@verb C1 l98
    |INFO
    |delimiter:{.}
     *brace_container C1
      {raw: @ {} . }
 *42 @chapter C2 l100 {@verb{. @ {} . .}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E44|prev->E40|up->E1]
 |section_heading_number:{20}
 |section_level:{1}
 |section_number:{21}
 |toplevel_directions:D[next->E44|prev->E40|up->E1]
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
    *@verb C1 l100
    |INFO
    |delimiter:{.}
     *brace_container C1
      {raw: @ {} . }
  {empty_line:\\n}
 *43 @node C1 l103 {@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E45|prev->E41|up->E0]
 |node_directions:D[next->E45|prev->E41|up->E0]
 |node_number:{22}
 |normalized:{cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i}
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@cite C1 l103
     *brace_container C2
      {cite }
      *@asis C1 l103
       *brace_container C1
        {asis}
    { }
    *@w C1 l103
     *brace_container C4
      {in }
      *@@
      {w }
      *@b C1 l103
       *brace_container C1
        {b}
    { }
    *@r C1 l103
     *brace_container C1
      {in r}
    { }
    *@sc C1 l103
     *brace_container C1
      {sc}
    { }
    *@strong C1 l103
     *brace_container C1
      {str}
    { }
    *@t C1 l103
     *brace_container C1
      {t}
    { }
    *@var C1 l103
     *brace_container C1
      {var}
    { }
    *@dfn C1 l103
     *brace_container C1
      {dfn}
    { }
    *@i C1 l103
     *brace_container C1
      {i}
 *44 @chapter C2 l104 {@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E46|prev->E42|up->E1]
 |section_heading_number:{21}
 |section_level:{1}
 |section_number:{22}
 |toplevel_directions:D[next->E46|prev->E42|up->E1]
  *arguments_line C1
   *line_arg C17
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@cite C1 l104
     *brace_container C2
      {cite }
      *@asis C1 l104
       *brace_container C1
        {asis}
    { }
    *@w C1 l104
     *brace_container C4
      {in }
      *@@
      {w }
      *@b C1 l104
       *brace_container C1
        {b}
    { }
    *@r C1 l104
     *brace_container C1
      {in r}
    { }
    *@sc C1 l104
     *brace_container C1
      {sc}
    { }
    *@strong C1 l104
     *brace_container C1
      {str}
    { }
    *@t C1 l104
     *brace_container C1
      {t}
    { }
    *@var C1 l104
     *brace_container C1
      {var}
    { }
    *@dfn C1 l104
     *brace_container C1
      {dfn}
    { }
    *@i C1 l104
     *brace_container C1
      {i}
  {empty_line:\\n}
 *45 @node C1 l106 {@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E47|prev->E43|up->E0]
 |node_directions:D[next->E47|prev->E43|up->E0]
 |node_number:{23}
 |normalized:{env-code-option-samp-command-file-C_002dx-ESC}
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@env C1 l106
     *brace_container C1
      {env}
    { }
    *@code C1 l106
     *brace_container C1
      {code}
    { }
    *@option C1 l106
     *brace_container C1
      {option}
    { }
    *@samp C1 l106
     *brace_container C1
      {samp}
    { }
    *@command C1 l106
     *brace_container C1
      {command}
    { }
    *@file C1 l106
     *brace_container C1
      {file}
    { }
    *@kbd C1 l106
     *brace_container C2
      {C-x }
      *@key C1 l106
       *brace_container C1
        {ESC}
 *46 @chapter C2 l107 {@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E48|prev->E44|up->E1]
 |section_heading_number:{22}
 |section_level:{1}
 |section_number:{23}
 |toplevel_directions:D[next->E48|prev->E44|up->E1]
  *arguments_line C1
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@env C1 l107
     *brace_container C1
      {env}
    { }
    *@code C1 l107
     *brace_container C1
      {code}
    { }
    *@option C1 l107
     *brace_container C1
      {option}
    { }
    *@samp C1 l107
     *brace_container C1
      {samp}
    { }
    *@command C1 l107
     *brace_container C1
      {command}
    { }
    *@file C1 l107
     *brace_container C1
      {file}
    { }
    *@kbd C1 l107
     *brace_container C2
      {C-x }
      *@key C1 l107
       *brace_container C1
        {ESC}
  {empty_line:\\n}
 *47 @node C1 l109 {8.27@dmn{in}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E49|prev->E45|up->E0]
 |node_directions:D[next->E49|prev->E45|up->E0]
 |node_number:{24}
 |normalized:{8_002e27in}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {8.27}
    *@dmn C1 l109
     *brace_container C1
      {in}
 *48 @chapter C2 l110 {8.27@dmn{in}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E50|prev->E46|up->E1]
 |section_heading_number:{23}
 |section_level:{1}
 |section_number:{24}
 |toplevel_directions:D[next->E50|prev->E46|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {8.27}
    *@dmn C1 l110
     *brace_container C1
      {in}
  {empty_line:\\n}
 *49 @node C1 l112 {@sansserif{sansserif} @slanted{slanted}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E51|prev->E47|up->E0]
 |node_directions:D[next->E51|prev->E47|up->E0]
 |node_number:{25}
 |normalized:{sansserif-slanted}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sansserif C1 l112
     *brace_container C1
      {sansserif}
    { }
    *@slanted C1 l112
     *brace_container C1
      {slanted}
 *50 @chapter C2 l113 {@sansserif{sansserif} @slanted{slanted}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E52|prev->E48|up->E1]
 |section_heading_number:{24}
 |section_level:{1}
 |section_number:{25}
 |toplevel_directions:D[next->E52|prev->E48|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sansserif C1 l113
     *brace_container C1
      {sansserif}
    { }
    *@slanted C1 l113
     *brace_container C1
      {slanted}
  {empty_line:\\n}
 *51 @node C1 l115 {@indicateurl{indicateurl}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E53|prev->E49|up->E0]
 |node_directions:D[next->E53|prev->E49|up->E0]
 |node_number:{26}
 |normalized:{indicateurl}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@indicateurl C1 l115
     *brace_container C1
      {indicateurl}
 *52 @chapter C2 l116 {@indicateurl{indicateurl}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E54|prev->E50|up->E1]
 |section_heading_number:{25}
 |section_level:{1}
 |section_number:{26}
 |toplevel_directions:D[next->E54|prev->E50|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@indicateurl C1 l116
     *brace_container C1
      {indicateurl}
  {empty_line:\\n}
 *53 @node C1 l118 {@sub{g}H 3@sup{rd}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E55|prev->E51|up->E0]
 |node_directions:D[next->E55|prev->E51|up->E0]
 |node_number:{27}
 |normalized:{gH-3rd}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sub C1 l118
     *brace_container C1
      {g}
    {H 3}
    *@sup C1 l118
     *brace_container C1
      {rd}
 *54 @chapter C2 l119 {@sub{g}H 3@sup{rd}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E56|prev->E52|up->E1]
 |section_heading_number:{26}
 |section_level:{1}
 |section_number:{27}
 |toplevel_directions:D[next->E56|prev->E52|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sub C1 l119
     *brace_container C1
      {g}
    {H 3}
    *@sup C1 l119
     *brace_container C1
      {rd}
  {empty_line:\\n}
 *55 @node C1 l121 {@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E53|up->E0]
 |node_directions:D[prev->E53|up->E0]
 |node_number:{28}
 |normalized:{http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@url C1 l121
     *brace_arg C1
      {http://somewhere_aaa}
    { }
    *@url C2 l121
     *brace_arg C1
      {url}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {text}
    { }
    *@uref C3 l121
     *brace_arg C1
      {/man.cgi/1/ls}
     *brace_arg
     *brace_arg C1
      {ls}
 *56 @chapter C56 l122 {@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E54|up->E1]
 |section_heading_number:{27}
 |section_level:{1}
 |section_number:{28}
 |toplevel_directions:D[prev->E54|up->E1]
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@url C1 l122
     *brace_arg C1
      {http://somewhere_aaa}
    { }
    *@url C2 l122
     *brace_arg C1
      {url}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {text}
    { }
    *@uref C3 l122
     *brace_arg C1
      {/man.cgi/1/ls}
     *brace_arg
     *brace_arg C1
      {ls}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l124
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
   *@ref C1 l126
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
   *@ref C1 l128
    *brace_arg C9
    |EXTRA
    |node_content:{@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}
    |normalized:{_0040-_007b-_007d-_005c-_0023}
     *@atchar C1 l128
      *brace_container
     { }
     *@lbracechar C1 l128
      *brace_container
     { }
     *@rbracechar C1 l128
      *brace_container
     { }
     *@backslashchar C1 l128
      *brace_container
     { }
     *@hashchar C1 l128
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l130
    *brace_arg C13
    |EXTRA
    |node_content:{@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}
    |normalized:{LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e}
     *@LaTeX C1 l130
      *brace_container
     { }
     *@TeX C1 l130
      *brace_container
     { }
     *@bullet C1 l130
      *brace_container
     { }
     *@comma C1 l130
      *brace_container
     { }
     *@copyright C1 l130
      *brace_container
     { }
     *@dots C1 l130
      *brace_container
     { }
     *@enddots C1 l130
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l132
    *brace_arg C11
    |EXTRA
    |node_content:{@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}
    |normalized:{_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212}
     *@equiv C1 l132
      *brace_container
     { }
     *@error C1 l132
      *brace_container
     { }
     *@euro C1 l132
      *brace_container
     { }
     *@exclamdown C1 l132
      *brace_container
     { }
     *@expansion C1 l132
      *brace_container
     { }
     *@minus C1 l132
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l134
    *brace_arg C5
    |EXTRA
    |node_content:{@geq{} @leq{} @arrow{}}
    |normalized:{_2265-_2264-_2192}
     *@geq C1 l134
      *brace_container
     { }
     *@leq C1 l134
      *brace_container
     { }
     *@arrow C1 l134
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l136
    *brace_arg C13
    |EXTRA
    |node_content:{@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}
    |normalized:{_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae}
     *@ordf C1 l136
      *brace_container
     { }
     *@ordm C1 l136
      *brace_container
     { }
     *@point C1 l136
      *brace_container
     { }
     *@pounds C1 l136
      *brace_container
     { }
     *@print C1 l136
      *brace_container
     { }
     *@questiondown C1 l136
      *brace_container
     { }
     *@registeredsymbol C1 l136
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l138
    *brace_arg C9
    |EXTRA
    |node_content:{@result{} @textdegree{} a@tie{}b @today{} @aa{}}
    |normalized:{_21d2-_00b0-a-b-_00e5}
     *@result C1 l138
      *brace_container
     { }
     *@textdegree C1 l138
      *brace_container
     { a}
     *@tie C1 l138
      *brace_container
     {b }
     *@today C1 l138
      *brace_container
     { }
     *@aa C1 l138
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l140
    *brace_arg C27
    |EXTRA
    |node_content:{@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}
    |normalized:{_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe}
     *@AA C1 l140
      *brace_container
     { }
     *@ae C1 l140
      *brace_container
     { }
     *@oe C1 l140
      *brace_container
     { }
     *@AE C1 l140
      *brace_container
     { }
     *@OE C1 l140
      *brace_container
     { }
     *@o C1 l140
      *brace_container
     { }
     *@O C1 l140
      *brace_container
     { }
     *@ss C1 l140
      *brace_container
     { }
     *@l C1 l140
      *brace_container
     { }
     *@L C1 l140
      *brace_container
     { }
     *@DH C1 l140
      *brace_container
     { }
     *@dh C1 l140
      *brace_container
     { }
     *@TH C1 l140
      *brace_container
     { }
     *@th C1 l140
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l142
    *brace_arg C21
    |EXTRA
    |node_content:{@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}
    |normalized:{_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119}
     *@" C1 l142
      *brace_container C1
       {a}
     { }
     *@~ C1 l142
      *brace_container C1
       {e}
     { }
     *@^ C1 l142
      *brace_container C1
       *@dotless C1 l142
        *brace_container C1
         {i}
     { }
     *@^ C1 l142
      *brace_container C1
       {a}
     { }
     *@` C1 l142
      *brace_container C1
       {a}
     { }
     *@\' C1 l142
      *following_arg C1
       {e}
     { }
     *@, C1 l142
      *brace_container C1
       {c}
     { }
     *@= C1 l142
      *brace_container C1
       {e}
     { }
     *@ringaccent C1 l142
      *brace_container C1
       {e}
     { }
     *@H C1 l142
      *brace_container C1
       {e}
     { }
     *@ogonek C1 l142
      *brace_container C1
       {e}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l144
    *brace_arg C13
    |EXTRA
    |node_content:{@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}
    |normalized:{_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e}
     *@dotaccent C1 l144
      *brace_container C1
       {e}
     { }
     *@u C1 l144
      *brace_container C1
       {e}
     { }
     *@ubaraccent C1 l144
      *brace_container C1
       {e}
     { }
     *@udotaccent C1 l144
      *brace_container C1
       {e}
     { }
     *@v C1 l144
      *brace_container C1
       {e}
     { }
     *@dotless C1 l144
      *brace_container C1
       {j}
     { }
     *@tieaccent C1 l144
      *brace_container C1
       {ee}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l146
    *brace_arg C5
    |EXTRA
    |node_content:{@dotless{i} @`{@=E} @,{@\'C}}
    |normalized:{_0131-_1e14-_1e08}
     *@dotless C1 l146
      *brace_container C1
       {i}
     { }
     *@` C1 l146
      *brace_container C1
       *@= C1 l146
        *following_arg C1
         {E}
     { }
     *@, C1 l146
      *brace_container C1
       *@\' C1 l146
        *following_arg C1
         {C}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l148
    *brace_arg C11
    |EXTRA
    |node_content:{@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}
    |normalized:{_201c-_201d-_2018-_2019-_201e-_201a}
     *@quotedblleft C1 l148
      *brace_container
     { }
     *@quotedblright C1 l148
      *brace_container
     { }
     *@quoteleft C1 l148
      *brace_container
     { }
     *@quoteright C1 l148
      *brace_container
     { }
     *@quotedblbase C1 l148
      *brace_container
     { }
     *@quotesinglbase C1 l148
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l150
    *brace_arg C11
    |EXTRA
    |node_content:{@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}
    |normalized:{_00ab-_00bb-_00ab-_00bb-_2039-_203a}
     *@guillemetleft C1 l150
      *brace_container
     { }
     *@guillemetright C1 l150
      *brace_container
     { }
     *@guillemotleft C1 l150
      *brace_container
     { }
     *@guillemotright C1 l150
      *brace_container
     { }
     *@guilsinglleft C1 l150
      *brace_container
     { }
     *@guilsinglright C1 l150
      *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l152
    *brace_arg C1
    |EXTRA
    |node_content:{`` \'\' --- -- ` \'}
    |normalized:{_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027}
     {`` \'\' --- -- ` \'}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l154
    *brace_arg C5
    |EXTRA
    |node_content:{@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}
    |normalized:{AAA-AAA-BBB}
     *@acronym C2 l154
      *brace_arg C1
       {AAA}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {fff}
     { }
     *@acronym C1 l154
      *brace_arg C1
       {AAA}
     { }
     *@acronym C1 l154
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
   *@ref C1 l157
    *brace_arg C5
    |EXTRA
    |node_content:{@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}
    |normalized:{CCC-CCC-DDD}
     *@abbr C2 l157
      *brace_arg C1
       {CCC}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {rrr}
     { }
     *@abbr C1 l157
      *brace_arg C1
       {CCC}
     { }
     *@abbr C1 l157
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
   *@ref C1 l160
    *brace_arg C3
    |EXTRA
    |node_content:{@email{someone@@somewher, the someone} @email{no_explain@@there}}
    |normalized:{someone_0040somewher-no_005fexplain_0040there}
     *@email C2 l160
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
     *@email C1 l160
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
   *@ref C1 l163
    *brace_arg C3
    |EXTRA
    |node_content:{@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}
    |normalized:{f_002d_002dile1-f_002d_002dile}
     *@image C1 l163
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {f--ile1}
     {  }
     *@image C5 l163
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
   *@ref C1 l165
    *brace_arg C1
    |EXTRA
    |node_content:{@verb{. @ {} . .}}
    |normalized:{-_0040-_007b_007d-_002e-}
     *@verb C1 l165
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
   *@ref C1 l168
    *brace_arg C17
    |EXTRA
    |node_content:{@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}
    |normalized:{cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i}
     *@cite C1 l168
      *brace_container C2
       {cite }
       *@asis C1 l168
        *brace_container C1
         {asis}
     { }
     *@w C1 l168
      *brace_container C4
       {in }
       *@@
       {w }
       *@b C1 l168
        *brace_container C1
         {b}
     { }
     *@r C1 l168
      *brace_container C1
       {in r}
     { }
     *@sc C1 l168
      *brace_container C1
       {sc}
     { }
     *@strong C1 l168
      *brace_container C1
       {str}
     { }
     *@t C1 l168
      *brace_container C1
       {t}
     { }
     *@var C1 l168
      *brace_container C1
       {var}
     { }
     *@dfn C1 l168
      *brace_container C1
       {dfn}
     { }
     *@i C1 l168
      *brace_container C1
       {i}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l170
    *brace_arg C13
    |EXTRA
    |node_content:{@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}
    |normalized:{env-code-option-samp-command-file-C_002dx-ESC}
     *@env C1 l170
      *brace_container C1
       {env}
     { }
     *@code C1 l170
      *brace_container C1
       {code}
     { }
     *@option C1 l170
      *brace_container C1
       {option}
     { }
     *@samp C1 l170
      *brace_container C1
       {samp}
     { }
     *@command C1 l170
      *brace_container C1
       {command}
     { }
     *@file C1 l170
      *brace_container C1
       {file}
     { }
     *@kbd C1 l170
      *brace_container C2
       {C-x }
       *@key C1 l170
        *brace_container C1
         {ESC}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l172
    *brace_arg C2
    |EXTRA
    |node_content:{8.27@dmn{in}}
    |normalized:{8_002e27in}
     {8.27}
     *@dmn C1 l172
      *brace_container C1
       {in}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l174
    *brace_arg C3
    |EXTRA
    |node_content:{@sansserif{sansserif} @slanted{slanted}}
    |normalized:{sansserif-slanted}
     *@sansserif C1 l174
      *brace_container C1
       {sansserif}
     { }
     *@slanted C1 l174
      *brace_container C1
       {slanted}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l176
    *brace_arg C1
    |EXTRA
    |node_content:{@indicateurl{indicateurl}}
    |normalized:{indicateurl}
     *@indicateurl C1 l176
      *brace_container C1
       {indicateurl}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l178
    *brace_arg C3
    |EXTRA
    |node_content:{@sub{g}H 3@sup{rd}}
    |normalized:{gH-3rd}
     *@sub C1 l178
      *brace_container C1
       {g}
     {H 3}
     *@sup C1 l178
      *brace_container C1
       {rd}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@ref C1 l180
    *brace_arg C5
    |EXTRA
    |node_content:{@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}
    |normalized:{http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls}
     *@url C1 l180
      *brace_arg C1
       {http://somewhere_aaa}
     { }
     *@url C2 l180
      *brace_arg C1
       {url}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {text}
     { }
     *@uref C3 l180
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
* == error-> Euro ! ==> -::
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

5 == error-> Euro ! ==> -
*************************

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

== error-> Euro ! ==> -

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


$result_nodes_list{'at_commands_in_refs_utf8'} = '1|Top
 associated_section: Top
 associated_title_command: Top
2|@- @{ @}
 associated_section: 1 @- @{ @}
 associated_title_command: 1 @- @{ @}
3|@  @	 @! @* @. @: .@: @? @@
 associated_section: 2 @  @	 @! @* @. @: .@: @? @@
 associated_title_command: 2 @  @	 @! @* @. @: .@: @? @@
4|@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
 associated_section: 3 @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
 associated_title_command: 3 @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
5|@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
 associated_section: 4 @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
 associated_title_command: 4 @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
6|@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
 associated_section: 5 @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
 associated_title_command: 5 @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
7|@geq{} @leq{} @arrow{}
 associated_section: 6 @geq{} @leq{} @arrow{}
 associated_title_command: 6 @geq{} @leq{} @arrow{}
8|@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
 associated_section: 7 @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
 associated_title_command: 7 @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
9|@result{} @textdegree{} a@tie{}b @today{} @aa{}
 associated_section: 8 @result{} @textdegree{} a@tie{}b @today{} @aa{}
 associated_title_command: 8 @result{} @textdegree{} a@tie{}b @today{} @aa{}
10|@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
 associated_section: 9 @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
 associated_title_command: 9 @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
11|@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
 associated_section: 10 @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
 associated_title_command: 10 @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
12|@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
 associated_section: 11 @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
 associated_title_command: 11 @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
13|@dotless{i} @`{@=E} @,{@\'C}
 associated_section: 12 @dotless{i} @`{@=E} @,{@\'C}
 associated_title_command: 12 @dotless{i} @`{@=E} @,{@\'C}
14|@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
 associated_section: 13 @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
 associated_title_command: 13 @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
15|@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
 associated_section: 14 @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
 associated_title_command: 14 @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
16|`` \'\' --- -- ` \'
 associated_section: 15 `` \'\' --- -- ` \'
 associated_title_command: 15 `` \'\' --- -- ` \'
17|@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
 associated_section: 16 @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
 associated_title_command: 16 @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
18|@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
 associated_section: 17 @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
 associated_title_command: 17 @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
19|@email{someone@@somewher, the someone} @email{no_explain@@there}
 associated_section: 18 @email{someone@@somewher, the someone} @email{no_explain@@there}
 associated_title_command: 18 @email{someone@@somewher, the someone} @email{no_explain@@there}
20|@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
 associated_section: 19 @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
 associated_title_command: 19 @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
21|@verb{. @ {} . .}
 associated_section: 20 @verb{. @ {} . .}
 associated_title_command: 20 @verb{. @ {} . .}
22|@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
 associated_section: 21 @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
 associated_title_command: 21 @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
23|@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
 associated_section: 22 @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
 associated_title_command: 22 @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
24|8.27@dmn{in}
 associated_section: 23 8.27@dmn{in}
 associated_title_command: 23 8.27@dmn{in}
25|@sansserif{sansserif} @slanted{slanted}
 associated_section: 24 @sansserif{sansserif} @slanted{slanted}
 associated_title_command: 24 @sansserif{sansserif} @slanted{slanted}
26|@indicateurl{indicateurl}
 associated_section: 25 @indicateurl{indicateurl}
 associated_title_command: 25 @indicateurl{indicateurl}
27|@sub{g}H 3@sup{rd}
 associated_section: 26 @sub{g}H 3@sup{rd}
 associated_title_command: 26 @sub{g}H 3@sup{rd}
28|@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
 associated_section: 27 @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
 associated_title_command: 27 @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
';

$result_sections_list{'at_commands_in_refs_utf8'} = '1|Top
 associated_anchor_command: Top
 associated_node: Top
2|@- @{ @}
 associated_anchor_command: @- @{ @}
 associated_node: @- @{ @}
3|@  @	 @! @* @. @: .@: @? @@
 associated_anchor_command: @  @	 @! @* @. @: .@: @? @@
 associated_node: @  @	 @! @* @. @: .@: @? @@
4|@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
 associated_anchor_command: @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
 associated_node: @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
5|@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
 associated_anchor_command: @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
 associated_node: @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
6|@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
 associated_anchor_command: @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
 associated_node: @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
7|@geq{} @leq{} @arrow{}
 associated_anchor_command: @geq{} @leq{} @arrow{}
 associated_node: @geq{} @leq{} @arrow{}
8|@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
 associated_anchor_command: @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
 associated_node: @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
9|@result{} @textdegree{} a@tie{}b @today{} @aa{}
 associated_anchor_command: @result{} @textdegree{} a@tie{}b @today{} @aa{}
 associated_node: @result{} @textdegree{} a@tie{}b @today{} @aa{}
10|@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
 associated_anchor_command: @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
 associated_node: @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}
11|@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
 associated_anchor_command: @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
 associated_node: @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
12|@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
 associated_anchor_command: @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
 associated_node: @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
13|@dotless{i} @`{@=E} @,{@\'C}
 associated_anchor_command: @dotless{i} @`{@=E} @,{@\'C}
 associated_node: @dotless{i} @`{@=E} @,{@\'C}
14|@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
 associated_anchor_command: @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
 associated_node: @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
15|@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
 associated_anchor_command: @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
 associated_node: @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
16|`` \'\' --- -- ` \'
 associated_anchor_command: `` \'\' --- -- ` \'
 associated_node: `` \'\' --- -- ` \'
17|@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
 associated_anchor_command: @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
 associated_node: @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
18|@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
 associated_anchor_command: @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
 associated_node: @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
19|@email{someone@@somewher, the someone} @email{no_explain@@there}
 associated_anchor_command: @email{someone@@somewher, the someone} @email{no_explain@@there}
 associated_node: @email{someone@@somewher, the someone} @email{no_explain@@there}
20|@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
 associated_anchor_command: @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
 associated_node: @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
21|@verb{. @ {} . .}
 associated_anchor_command: @verb{. @ {} . .}
 associated_node: @verb{. @ {} . .}
22|@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
 associated_anchor_command: @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
 associated_node: @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
23|@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
 associated_anchor_command: @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
 associated_node: @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
24|8.27@dmn{in}
 associated_anchor_command: 8.27@dmn{in}
 associated_node: 8.27@dmn{in}
25|@sansserif{sansserif} @slanted{slanted}
 associated_anchor_command: @sansserif{sansserif} @slanted{slanted}
 associated_node: @sansserif{sansserif} @slanted{slanted}
26|@indicateurl{indicateurl}
 associated_anchor_command: @indicateurl{indicateurl}
 associated_node: @indicateurl{indicateurl}
27|@sub{g}H 3@sup{rd}
 associated_anchor_command: @sub{g}H 3@sup{rd}
 associated_node: @sub{g}H 3@sup{rd}
28|@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
 associated_anchor_command: @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
 associated_node: @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
';

$result_headings_list{'at_commands_in_refs_utf8'} = '';

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
    'line_nr' => 93,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
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
