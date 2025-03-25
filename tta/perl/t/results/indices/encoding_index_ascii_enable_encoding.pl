use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'encoding_index_ascii_enable_encoding'} = '*document_root C4
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C1
    {text_before_beginning:\\n}
  *preamble_before_content C3
   *@setfilename C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{encoding_index_ascii_enable_encoding.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {encoding_index_ascii_enable_encoding.info}
   *@documentencoding C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{us-ascii}
   |text_arg:{us-ascii}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {us-ascii}
   {empty_line:\\n}
 *0 @node C1 l5 {Top}
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
 *1 @top C1 l6 {top}
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
 *2 @node C61 l7 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *3 @\' C1 l9
     *following_arg C1
      {e}
    { }
    *4 @\' C1 l9
     *following_arg C1
      {e}
  *index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *5 @" C1 l10
     *brace_container C1
      {i}
    { }
    *6 @" C1 l10
     *brace_container C1
      {i}
    *7 @" C1 l10
     *brace_container C1
      {i}
    *8 @" C1 l10
     *brace_container C1
      {i}
  *index_entry_command@cindex C1 l11
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
   *line_arg C6
   |INFO
   |spaces_after_argument:
    |{\\n}
    *9 @^ C1 l11
     *following_arg C1
      {i}
    { }
    *10 @^ C1 l11
     *following_arg C1
      {i}
    *11 @^ C1 l11
     *following_arg C1
      {i}
    *12 @^ C1 l11
     *following_arg C1
      {i}
    *13 @^ C1 l11
     *following_arg C1
      {i}
  *index_entry_command@cindex C1 l12
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a}
  *index_entry_command@cindex C1 l13
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {b}
  *index_entry_command@cindex C1 l14
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c}
  *index_entry_command@cindex C1 l15
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
    {d}
  *index_entry_command@cindex C1 l16
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {e}
  *index_entry_command@cindex C1 l17
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {f}
  *index_entry_command@cindex C1 l18
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
    |{\\n}
    {g}
  *index_entry_command@cindex C1 l19
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {h}
  *index_entry_command@cindex C1 l20
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,12}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {i}
  *index_entry_command@cindex C1 l21
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {j}
  *index_entry_command@cindex C1 l22
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,14}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {k}
  *index_entry_command@cindex C1 l23
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,15}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {l}
  *index_entry_command@cindex C1 l24
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,16}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {m}
  *index_entry_command@cindex C1 l25
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,17}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n}
  *index_entry_command@cindex C1 l26
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,18}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {o}
  *index_entry_command@cindex C1 l27
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,19}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {p}
  *index_entry_command@cindex C1 l28
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,20}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {q}
  *index_entry_command@cindex C1 l29
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,21}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {r}
  *index_entry_command@cindex C1 l30
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,22}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {s}
  *index_entry_command@cindex C1 l31
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,23}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {t}
  *index_entry_command@cindex C1 l32
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,24}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {u}
  *index_entry_command@cindex C1 l33
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,25}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {v}
  *index_entry_command@cindex C1 l34
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,26}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {w}
  *index_entry_command@cindex C1 l35
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,27}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {x}
  *index_entry_command@cindex C1 l36
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,28}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {y}
  *index_entry_command@cindex C1 l37
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,29}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {z}
  *index_entry_command@cindex C1 l38
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,30}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A}
  *index_entry_command@cindex C1 l39
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,31}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {B}
  *index_entry_command@cindex C1 l40
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,32}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *14 @l C1 l40
     *brace_container
  *index_entry_command@cindex C1 l41
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,33}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *15 @L C1 l41
     *brace_container
  *index_entry_command@cindex C1 l42
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,34}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    *16 @dotless C1 l42
     *brace_container C1
      {i}
    { }
    *17 @dotless C1 l42
     *brace_container C1
      {i}
    { (dotless)}
  *index_entry_command@cindex C1 l43
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,35}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    *18 @^ C1 l43
     *brace_container C1
      *19 @dotless C1 l43
       *brace_container C1
        {i}
    { }
    *20 @^ C1 l43
     *brace_container C1
      *21 @dotless C1 l43
       *brace_container C1
        {i}
    { (dotless)}
  *index_entry_command@cindex C1 l44
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,36}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *22 @ss C1 l44
     *brace_container
  *index_entry_command@cindex C1 l45
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,37}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *23 @euro C1 l45
     *brace_container
  *index_entry_command@cindex C1 l46
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,38}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *24 @AE C1 l46
     *brace_container
  *index_entry_command@cindex C1 l47
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,39}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *25 @exclamdown C1 l47
     *brace_container
  *index_entry_command@cindex C1 l48
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,40}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *26 @TH C1 l48
     *brace_container
  *index_entry_command@cindex C1 l49
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,41}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *27 @DH C1 l49
     *brace_container
  *index_entry_command@cindex C1 l50
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,42}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *28 @ordf C1 l50
     *brace_container
  *index_entry_command@cindex C1 l51
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,43}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *29 @ordm C1 l51
     *brace_container
  *index_entry_command@cindex C1 l52
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,44}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *30 @textdegree C1 l52
     *brace_container
  *index_entry_command@cindex C1 l53
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,45}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {0}
  *index_entry_command@cindex C1 l54
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,46}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {9}
  *index_entry_command@cindex C1 l55
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,47}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *31 @quotedblleft C1 l55
     *brace_container
  *index_entry_command@cindex C1 l56
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,48}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *32 @geq C1 l56
     *brace_container
  *index_entry_command@cindex C1 l57
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,49}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *33 @comma C1 l57
     *brace_container
  *index_entry_command@cindex C1 l58
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,50}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {``}
  *index_entry_command@cindex C1 l59
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,51}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {`}
  *index_entry_command@cindex C1 l60
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,52}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {\'}
  *index_entry_command@cindex C1 l61
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,53}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {\'\'}
  *index_entry_command@cindex C1 l62
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,54}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {"}
  *index_entry_command@cindex C1 l63
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,55}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@@
  *index_entry_command@cindex C1 l64
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,56}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {--}
  *index_entry_command@cindex C1 l65
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,57}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {---}
  {empty_line:\\n}
  *@printindex C1 l67
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


$result_texis{'encoding_index_ascii_enable_encoding'} = '
@setfilename encoding_index_ascii_enable_encoding.info
@documentencoding us-ascii

@node Top
@top top
@node chap

@cindex @\'e @\'e
@cindex @"{i} @"{i}@"{i}@"{i}
@cindex @^i @^i@^i@^i@^i
@cindex a
@cindex b
@cindex c
@cindex d
@cindex e
@cindex f
@cindex g
@cindex h
@cindex i
@cindex j
@cindex k
@cindex l
@cindex m
@cindex n
@cindex o
@cindex p
@cindex q
@cindex r
@cindex s
@cindex t
@cindex u
@cindex v
@cindex w
@cindex x
@cindex y
@cindex z
@cindex A
@cindex B
@cindex @l{}
@cindex @L{}
@cindex @dotless{i} @dotless{i} (dotless)
@cindex @^{@dotless{i}} @^{@dotless{i}} (dotless)
@cindex @ss{}
@cindex @euro{}
@cindex @AE{}
@cindex @exclamdown{}
@cindex @TH{}
@cindex @DH{}
@cindex @ordf{}
@cindex @ordm{}
@cindex @textdegree{}
@cindex 0
@cindex 9
@cindex @quotedblleft{}
@cindex @geq{}
@cindex @comma{}
@cindex ``
@cindex `
@cindex \'
@cindex \'\'
@cindex "
@cindex @@
@cindex --
@cindex ---

@printindex cp
';


$result_texts{'encoding_index_ascii_enable_encoding'} = '
top
***


';

$result_errors{'encoding_index_ascii_enable_encoding'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 7,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'encoding_index_ascii_enable_encoding'} = 'cp:
 -
 --
 ,
 ¡
 \'
 "
 "
 "
 “
 @
 `
 °
 ≥
 €
 0
 9
 a
 A
 ª
 Æ
 b
 B
 c
 d
 Ð
 e
 é é
 f
 g
 h
 i
 ı ı (dotless)
 î î (dotless)
 ï ïïï
 î îîîî
 j
 k
 l
 ł
 Ł
 m
 n
 o
 º
 p
 q
 r
 s
 ß
 t
 u
 v
 w
 x
 y
 z
 Þ
';

1;
