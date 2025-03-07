use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'all_commands_delimiters_printindex'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C104 l2 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |associated_title_command:[E1]
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
  *2 @deffn C2 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l4
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*201 @var C1
       |*brace_container C1
        |{forward--char}
   |element_node:[E1]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C36
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Command}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *3 @var C1 l4
        *brace_container C1
         {forward--char}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *4 @var C1 l4
        *brace_container C1
         {nchars}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l4
       {argument2}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l4
       {argument3}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<1><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *5 @var C1 l5
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *6 @b C1 l5
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l5
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *7 @var C1 l5
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *8 @defvr C2 l8
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l8
   |EXTRA
   |def_command:{defvr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{fill-column}
   |element_node:[E1]
   |index_entry:I{vr,1}
   |original_def_cmdname:{defvr}
    *block_line_arg C34
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Variable}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {fill-column}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l8
       {argument1}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l8
       {argument2}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<2><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *9 @var C1 l9
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *10 @b C1 l9
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l9
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *11 @var C1 l9
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defvr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defvr}
  {empty_line:\\n}
  *12 @deftypefn C2 l12
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l12
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{foobar}
   |element_node:[E1]
   |index_entry:I{fn,2}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C16
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l12
       {Library Function}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {foobar}
     {spaces: }
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *13 @var C1 l12
        *brace_container C1
         {foo}
     {delimiter:,}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {float}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *14 @var C1 l12
        *brace_container C1
         {bar}
     {delimiter:)}
   *@end C1 l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *15 @deftypefn C2 l15
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l15
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{foobar}
   |element_node:[E1]
   |index_entry:I{fn,3}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C46
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l15
       {Library Function}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {foobar}
     {spaces: }
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *16 @var C1 l15
        *brace_container C1
         {foo}
     {delimiter:,}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {float}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *17 @var C1 l15
        *brace_container C1
         {bar}
     {delimiter:)}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<3><p:1>
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     *def_typearg C1
      *bracketed_arg C1 l16
       {[something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *18 @var C1 l16
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *19 @b C1 l16
        *brace_container C1
         {in, b}
     {spaces: }
     *def_typearg C1
      *bracketed_arg C1 l16
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *20 @var C1 l16
        *brace_container C1
         {pref}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {ct}
     *def_arg C1
      *def_line_arg C1
       *@*
     *def_arg C1
      *def_line_arg C1
       *@*
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {last}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *21 @deftypefn C2 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l19
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{foobug}
   |element_node:[E1]
   |index_entry:I{fn,4}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l19
       {Library Function}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {foobug}
     {spaces: }
     *def_typearg C1
      *bracketed_arg C1 l19
       {[something}
   *@end C1 l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *22 @deftypefn C2 l22
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l22
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{push}
   |element_node:[E1]
   |index_entry:I{fn,5}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C29
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {stacks}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {private}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {push}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       *23 @var C1 l22
        *brace_container C1
         {s}
     *def_typearg C1
      *def_line_arg C1
       {:in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {out}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {stack;}
     {spaces:                  }
     >SOURCEMARKS
     >defline_continuation<4><p:1>
     *def_arg C1
      *def_line_arg C1
       *24 @var C1 l23
        *brace_container C1
         {n}
     *def_typearg C1
      *def_line_arg C1
       {:in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {integer}
     {delimiter:)}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {;}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {;barg}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {aarg;}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {;}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {end}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *25 @deftypevr C2 l26
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l26
   |EXTRA
   |def_command:{deftypevr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{enable}
   |element_node:[E1]
   |index_entry:I{vr,2}
   |original_def_cmdname:{deftypevr}
    *block_line_arg C32
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l26
       {Global Flag}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {enable}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<5><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *26 @var C1 l27
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *27 @b C1 l27
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l27
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *28 @var C1 l27
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l28
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypevr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypevr}
  {empty_line:\\n}
  *29 @deftp C2 l30
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l30
   |EXTRA
   |def_command:{deftp}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{pair}
   |element_node:[E1]
   |index_entry:I{tp,1}
   |original_def_cmdname:{deftp}
    *block_line_arg C34
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l30
       {Data type}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {pair}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {car}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {cdr}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<6><p:1>
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_typearg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *30 @var C1 l31
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *31 @b C1 l31
        *brace_container C1
         {in, b}
     {spaces: }
     *def_typearg C1
      *bracketed_arg C1 l31
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *32 @var C1 l31
        *brace_container C1
         {pref}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {last}
   *@end C1 l32
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftp}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftp}
  {empty_line:\\n}
  *33 @defcv C2 l34
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l34
   |EXTRA
   |def_command:{defcv}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{border-pattern}
   |element_node:[E1]
   |index_entry:I{vr,3}
   |original_def_cmdname:{defcv}
    *block_line_arg C32
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l34
       {Class Option}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {Window}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {border-pattern}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<7><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *34 @var C1 l35
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *35 @b C1 l35
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l35
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *36 @var C1 l35
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l36
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defcv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defcv}
  {empty_line:\\n}
  *37 @deftypecv C2 l38
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l38
   |EXTRA
   |def_command:{deftypecv}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{border-pattern}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |{Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{border-pattern}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |{Window}
   |element_node:[E1]
   |index_entry:I{vr,4}
   |original_def_cmdname:{deftypecv}
    *block_line_arg C34
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l38
       {Class Option2}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *38 @code C1 l38
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {border-pattern}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<8><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *39 @var C1 l39
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *40 @b C1 l39
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l39
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *41 @var C1 l39
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l40
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypecv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypecv}
  {empty_line:\\n}
  *42 @defop C2 l42
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l42
   |EXTRA
   |def_command:{defop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{windows}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{windows}
   |element_node:[E1]
   |index_entry:I{fn,6}
   |original_def_cmdname:{defop}
    *block_line_arg C32
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {windows}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {expose}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<9><p:1>
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_arg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *43 @var C1 l43
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *44 @b C1 l43
        *brace_container C1
         {in, b}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l43
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *45 @var C1 l43
        *brace_container C1
         {pref}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {last}
   *@end C1 l44
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
  {empty_line:\\n}
  *46 @deftypeop C2 l46
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l46
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W,indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W,indow}
   |element_node:[E1]
   |index_entry:I{fn,7}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C34
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation2}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {W,indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *47 @code C1 l46
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {expose}
     {spaces:         }
     >SOURCEMARKS
     >defline_continuation<10><p:1>
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {arg}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {in}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {brace}
     {delimiter:,}
     {spaces: }
     {delimiter:[}
     *def_typearg C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *48 @var C1 l47
        *brace_container C1
         {in v--ar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *49 @b C1 l47
        *brace_container C1
         {in, b}
     {spaces: }
     *def_typearg C1
      *bracketed_arg C1 l47
       {, comma}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     *def_arg C1
      *def_line_arg C1
       *50 @var C1 l47
        *brace_container C1
         {pref}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {p}
     {delimiter:]}
     {delimiter:)}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {last}
   *@end C1 l48
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *51 @deftypeop C2 l50
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l50
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{Window}
   |element_node:[E1]
   |index_entry:I{fn,8}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation5}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *52 @code C1 l50
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l51
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *53 @deftypeop C2 l53
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l53
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e,xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W,indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e,xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W,indow}
   |element_node:[E1]
   |index_entry:I{fn,9}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation3}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l53
       {W,indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *54 @code C1 l53
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l53
       {e,xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l54
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *55 @deftypeop C2 l56
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l56
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{,expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{,Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{,expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{,Window}
   |element_node:[E1]
   |index_entry:I{fn,10}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation4}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l56
       {,Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *56 @code C1 l56
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l56
       {,expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l57
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *57 @deftypeop C2 l59
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l59
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e,xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W,indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e,xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W,indow}
   |element_node:[E1]
   |index_entry:I{fn,11}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation6}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {W,indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *58 @code C1 l59
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {e,xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l60
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *59 @deftypeop C2 l62
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l62
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{,expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{,Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{,expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{,Window}
   |element_node:[E1]
   |index_entry:I{fn,12}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation7}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {,Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *60 @code C1 l62
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {,expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l63
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *61 @deftypeop C2 l65
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l65
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e)xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W)indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e)xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W)indow}
   |element_node:[E1]
   |index_entry:I{fn,13}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation13}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l65
       {W)indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *62 @code C1 l65
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l65
       {e)xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l66
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *63 @deftypeop C2 l68
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l68
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{)expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{)Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{)expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{)Window}
   |element_node:[E1]
   |index_entry:I{fn,14}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation14}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l68
       {)Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *64 @code C1 l68
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l68
       {)expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l69
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *65 @deftypeop C2 l71
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l71
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e)xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W)indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e)xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W)indow}
   |element_node:[E1]
   |index_entry:I{fn,15}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation16}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {W)indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *66 @code C1 l71
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {e)xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l72
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *67 @deftypeop C2 l74
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l74
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{)expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{)Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{)expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{)Window}
   |element_node:[E1]
   |index_entry:I{fn,16}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation17}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {)Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *68 @code C1 l74
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {)expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l75
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *69 @deftypeop C2 l77
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l77
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e;xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W;indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{e;xpose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{W;indow}
   |element_node:[E1]
   |index_entry:I{fn,17}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation18}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l77
       {W;indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *70 @code C1 l77
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l77
       {e;xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l78
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *71 @deftypeop C2 l80
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l80
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{;expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{;Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{;expose}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{;Window}
   |element_node:[E1]
   |index_entry:I{fn,18}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation19}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l80
       {;Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *72 @code C1 l80
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l80
       {;expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l81
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *73 @deftypeop C2 l83
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l83
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e;xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W;indow}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{e;xpose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{W;indow}
   |element_node:[E1]
   |index_entry:I{fn,19}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation20}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {W;indow}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *74 @code C1 l83
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {e;xpose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l84
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *75 @deftypeop C2 l86
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l86
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{;expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{;Window}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{;expose}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{;Window}
   |element_node:[E1]
   |index_entry:I{fn,20}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Operation21}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {;Window}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *76 @code C1 l86
        *brace_container C1
         {int}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {;expose}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg}
   *@end C1 l87
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *77 @deftypeop C2 l89
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l89
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{name}
     |{ on }
     |*def_class C1
      |*bracketed_arg C2
       |{Window}
       |*202 @code C1
        |*brace_container C1
         |{int}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{name}
     |{ on }
     |*def_class C1
      |*bracketed_arg C2
       |{Window}
       |*203 @code C1
        |*brace_container C1
         |{int}
   |element_node:[E1]
   |index_entry:I{fn,21}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C2
       {Command}
       *78 @code C1 l89
        *brace_container C1
         {com}
     {spaces: }
     *def_class C1
      *bracketed_arg C2 l89
       {Window}
       *79 @code C1 l89
        *brace_container C1
         {int}
     {spaces: }
     *def_type C1
      *def_line_arg C2
       {expose}
       *80 @var C1 l89
        *brace_container C1
         {exp}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
   *@end C1 l90
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *81 @defun C2 l92
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l92
   |EXTRA
   |def_command:{defun}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{apply}
   |element_node:[E1]
   |index_entry:I{fn,22}
   |original_def_cmdname:{defun}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Function}
     (i){spaces: }
     *def_name C1
      *def_line_arg C1
       {apply}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {function}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {&rest}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arguments}
   *@end C1 l93
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defun}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defun}
  {empty_line:\\n}
  *82 @deffn C2 l95
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l95
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*204 @var C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{fn,23}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *83 @var C1 l95
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *84 @var C1 l95
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *85 @var C1 l95
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *86 @var C1 l95
        *brace_container C1
         {A4}
   *@end C1 l96
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *87 @deffn C2 l98
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l98
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*205 @code C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{fn,24}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *88 @code C1 l98
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *89 @code C1 l98
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *90 @code C1 l98
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *91 @code C1 l98
        *brace_container C1
         {A4}
   *@end C1 l99
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *92 @defvr C2 l101
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l101
   |EXTRA
   |def_command:{defvr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*206 @var C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{vr,5}
   |original_def_cmdname:{defvr}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *93 @var C1 l101
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *94 @var C1 l101
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *95 @var C1 l101
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *96 @var C1 l101
        *brace_container C1
         {A4}
   *@end C1 l102
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defvr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defvr}
  {empty_line:\\n}
  *97 @defvr C2 l104
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l104
   |EXTRA
   |def_command:{defvr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*207 @code C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{vr,6}
   |original_def_cmdname:{defvr}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *98 @code C1 l104
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *99 @code C1 l104
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *100 @code C1 l104
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *101 @code C1 l104
        *brace_container C1
         {A4}
   *@end C1 l105
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defvr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defvr}
  {empty_line:\\n}
  *102 @deftypefn C2 l107
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l107
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*208 @var C1
       |*brace_container C1
        |{A3}
   |element_node:[E1]
   |index_entry:I{fn,25}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *103 @var C1 l107
        *brace_container C1
         {A1}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *104 @var C1 l107
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *105 @var C1 l107
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *106 @var C1 l107
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *107 @var C1 l107
        *brace_container C1
         {A5}
   *@end C1 l108
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *108 @deftypefn C2 l110
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l110
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*209 @code C1
       |*brace_container C1
        |{A3}
   |element_node:[E1]
   |index_entry:I{fn,26}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *109 @code C1 l110
        *brace_container C1
         {A1}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *110 @code C1 l110
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *111 @code C1 l110
        *brace_container C1
         {A3}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *112 @code C1 l110
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *113 @code C1 l110
        *brace_container C1
         {A5}
   *@end C1 l111
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *114 @deftypevr C2 l113
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l113
   |EXTRA
   |def_command:{deftypevr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*210 @var C1
       |*brace_container C1
        |{A3}
   |element_node:[E1]
   |index_entry:I{vr,7}
   |original_def_cmdname:{deftypevr}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *115 @var C1 l113
        *brace_container C1
         {A1}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *116 @var C1 l113
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *117 @var C1 l113
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *118 @var C1 l113
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *119 @var C1 l113
        *brace_container C1
         {A5}
   *@end C1 l114
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypevr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypevr}
  {empty_line:\\n}
  *120 @deftypevr C2 l116
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l116
   |EXTRA
   |def_command:{deftypevr}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*211 @code C1
       |*brace_container C1
        |{A3}
   |element_node:[E1]
   |index_entry:I{vr,8}
   |original_def_cmdname:{deftypevr}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *121 @code C1 l116
        *brace_container C1
         {A1}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *122 @t C1 l116
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *123 @code C1 l116
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *124 @code C1 l116
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *125 @code C1 l116
        *brace_container C1
         {A5}
   *@end C1 l117
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypevr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypevr}
  {empty_line:\\n}
  *126 @deftp C2 l119
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l119
   |EXTRA
   |def_command:{deftp}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*212 @var C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{tp,2}
   |original_def_cmdname:{deftp}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *127 @var C1 l119
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *128 @var C1 l119
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *129 @var C1 l119
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *130 @var C1 l119
        *brace_container C1
         {A4}
   *@end C1 l120
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftp}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftp}
  {empty_line:\\n}
  *131 @deftp C2 l122
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l122
   |EXTRA
   |def_command:{deftp}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*213 @code C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{tp,3}
   |original_def_cmdname:{deftp}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *132 @code C1 l122
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *133 @code C1 l122
        *brace_container C1
         {A2}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *134 @code C1 l122
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *135 @code C1 l122
        *brace_container C1
         {A4}
   *@end C1 l123
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftp}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftp}
  {empty_line:\\n}
  *136 @defcv C2 l125
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l125
   |EXTRA
   |def_command:{defcv}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*214 @var C1
       |*brace_container C1
        |{A3}
   |element_node:[E1]
   |index_entry:I{vr,9}
   |original_def_cmdname:{defcv}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *137 @var C1 l125
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *138 @var C1 l125
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *139 @var C1 l125
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *140 @var C1 l125
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *141 @var C1 l125
        *brace_container C1
         {A5}
   *@end C1 l126
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defcv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defcv}
  {empty_line:\\n}
  *142 @deftp C2 l128
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l128
   |EXTRA
   |def_command:{deftp}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*215 @code C1
       |*brace_container C1
        |{A2}
   |element_node:[E1]
   |index_entry:I{tp,4}
   |original_def_cmdname:{deftp}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *143 @code C1 l128
        *brace_container C1
         {A1}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *144 @code C1 l128
        *brace_container C1
         {A2}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *145 @code C1 l128
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *146 @code C1 l128
        *brace_container C1
         {A4}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *147 @code C1 l128
        *brace_container C1
         {A5}
   *@end C1 l129
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftp}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftp}
  {empty_line:\\n}
  *148 @deftypecv C2 l131
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l131
   |EXTRA
   |def_command:{deftypecv}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*216 @var C1
        |*brace_container C1
         |{A4}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |*217 @var C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*218 @var C1
        |*brace_container C1
         |{A4}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |*219 @var C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{vr,10}
   |original_def_cmdname:{deftypecv}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *149 @var C1 l131
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *150 @var C1 l131
        *brace_container C1
         {A2}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *151 @var C1 l131
        *brace_container C1
         {A3}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *152 @var C1 l131
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *153 @var C1 l131
        *brace_container C1
         {A5}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *154 @var C1 l131
        *brace_container C1
         {A6}
   *@end C1 l132
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypecv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypecv}
  {empty_line:\\n}
  *155 @deftypecv C2 l134
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l134
   |EXTRA
   |def_command:{deftypecv}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*220 @code C1
        |*brace_container C1
         |{A4}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |*221 @code C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*222 @code C1
        |*brace_container C1
         |{A4}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |*223 @code C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{vr,11}
   |original_def_cmdname:{deftypecv}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *156 @code C1 l134
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *157 @code C1 l134
        *brace_container C1
         {A2}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *158 @option C1 l134
        *brace_container C1
         {A3}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *159 @code C1 l134
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *160 @code C1 l134
        *brace_container C1
         {A5}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *161 @code C1 l134
        *brace_container C1
         {A6}
   *@end C1 l135
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypecv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypecv}
  {empty_line:\\n}
  *162 @defop C2 l137
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l137
   |EXTRA
   |def_command:{defop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*224 @var C1
        |*brace_container C1
         |{A3}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*225 @var C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*226 @var C1
        |*brace_container C1
         |{A3}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*227 @var C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{fn,27}
   |original_def_cmdname:{defop}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *163 @var C1 l137
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *164 @var C1 l137
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *165 @var C1 l137
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *166 @var C1 l137
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *167 @var C1 l137
        *brace_container C1
         {A5}
   *@end C1 l138
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
  {empty_line:\\n}
  *168 @defop C2 l140
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l140
   |EXTRA
   |def_command:{defop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*228 @code C1
        |*brace_container C1
         |{A3}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*229 @code C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*230 @code C1
        |*brace_container C1
         |{A3}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*231 @code C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{fn,28}
   |original_def_cmdname:{defop}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *169 @code C1 l140
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *170 @code C1 l140
        *brace_container C1
         {A2}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *171 @code C1 l140
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *172 @code C1 l140
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *173 @code C1 l140
        *brace_container C1
         {A5}
   *@end C1 l141
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
  {empty_line:\\n}
  *174 @deftypeop C2 l143
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l143
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*232 @var C1
        |*brace_container C1
         |{A4}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*233 @var C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*234 @var C1
        |*brace_container C1
         |{A4}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*235 @var C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{fn,29}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *175 @var C1 l143
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *176 @var C1 l143
        *brace_container C1
         {A2}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *177 @var C1 l143
        *brace_container C1
         {A3}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *178 @var C1 l143
        *brace_container C1
         {A4}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *179 @var C1 l143
        *brace_container C1
         {A5}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *180 @var C1 l143
        *brace_container C1
         {A6}
   *@end C1 l144
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *181 @deftypeop C2 l146
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l146
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*236 @code C1
        |*brace_container C1
         |{A4}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*237 @code C1
        |*brace_container C1
         |{A2}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |*238 @code C1
        |*brace_container C1
         |{A4}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |*239 @code C1
        |*brace_container C1
         |{A2}
   |element_node:[E1]
   |index_entry:I{fn,30}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *182 @code C1 l146
        *brace_container C1
         {A1}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       *183 @code C1 l146
        *brace_container C1
         {A2}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       *184 @code C1 l146
        *brace_container C1
         {A3}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *185 @code C1 l146
        *brace_container C1
         {A4}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *186 @code C1 l146
        *brace_container C1
         {A5}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *187 @code C1 l146
        *brace_container C1
         {A6}
   *@end C1 l147
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *188 @deftypefn C2 l149
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l149
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*bracketed_arg C1
      |{fun_name}
   |element_node:[E1]
   |index_entry:I{fn,31}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l149
       {code then var}
     {spaces: }
     *def_type C1
      *bracketed_arg C1 l149
       {ret_type}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l149
       {fun_name}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *189 @code C1 l149
        *brace_container C1
         {A1}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *190 @var C1 l149
        *brace_container C1
         {A2}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *191 @code C1 l149
        *brace_container C1
         {A3}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *192 @var C1 l149
        *brace_container C1
         {A4}
   *@end C1 l150
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *193 @deftypefn C2 l152
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l152
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*bracketed_arg C1
      |{fun_name1}
   |element_node:[E1]
   |index_entry:I{fn,32}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l152
       {var then code}
     {spaces: }
     *def_type C1
      *bracketed_arg C1 l152
       {ret_type1}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l152
       {fun_name1}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *194 @var C1 l152
        *brace_container C1
         {A1}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *195 @code C1 l152
        *brace_container C1
         {A2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *196 @var C1 l152
        *brace_container C1
         {A3}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *197 @code C1 l152
        *brace_container C1
         {A4}
   *@end C1 l153
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *198 @heading C1 l155
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Functions}
  *@printindex C1 l156
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
  *199 @heading C1 l158
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Types}
  *@printindex C1 l159
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{tp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {tp}
  {empty_line:\\n}
  *200 @heading C1 l161
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Variables}
  *@printindex C1 l162
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{vr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr}
';


$result_texis{'all_commands_delimiters_printindex'} = '@node Top
@node chap

@deffn Command @var{forward--char} @var{nchars} {argument2} {argument3}         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deffn

@defvr Variable fill-column {argument1} {argument2}         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defvr

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar})
@end deftypefn

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar})         (arg in brace, {[something} @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) ct@*@* last
@end deftypefn

@deftypefn {Library Function} int foobug {[something}
@end deftypefn

@deftypefn stacks private push (@var{s}:in out stack;                  @var{n}:in integer) ; ;barg aarg; ; end
@end deftypefn

@deftypevr {Global Flag} int enable         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypevr

@deftp {Data type} pair car cdr         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftp

@defcv {Class Option} Window border-pattern         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defcv

@deftypecv {Class Option2} Window @code{int} border-pattern         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypecv

@defop Operation windows expose         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defop

@deftypeop Operation2 W,indow @code{int} expose         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypeop

@deftypeop Operation5 Window @code{int} expose type arg
@end deftypeop

@deftypeop Operation3 {W,indow} @code{int} {e,xpose} type arg
@end deftypeop

@deftypeop Operation4 {,Window} @code{int} {,expose} type arg
@end deftypeop

@deftypeop Operation6 W,indow @code{int} e,xpose type arg
@end deftypeop

@deftypeop Operation7 ,Window @code{int} ,expose type arg
@end deftypeop

@deftypeop Operation13 {W)indow} @code{int} {e)xpose} type arg
@end deftypeop

@deftypeop Operation14 {)Window} @code{int} {)expose} type arg
@end deftypeop

@deftypeop Operation16 W)indow @code{int} e)xpose type arg
@end deftypeop

@deftypeop Operation17 )Window @code{int} )expose type arg
@end deftypeop

@deftypeop Operation18 {W;indow} @code{int} {e;xpose} type arg
@end deftypeop

@deftypeop Operation19 {;Window} @code{int} {;expose} type arg
@end deftypeop

@deftypeop Operation20 W;indow @code{int} e;xpose type arg
@end deftypeop

@deftypeop Operation21 ;Window @code{int} ;expose type arg
@end deftypeop

@deftypeop Command@code{com} {Window@code{int}} expose@var{exp} name
@end deftypeop

@defun apply function &rest arguments
@end defun

@deffn @var{A1} @var{A2} @var{A3} @var{A4}
@end deffn

@deffn @code{A1} @code{A2} @code{A3} @code{A4}
@end deffn

@defvr @var{A1} @var{A2} @var{A3} @var{A4}
@end defvr

@defvr @code{A1} @code{A2} @code{A3} @code{A4}
@end defvr

@deftypefn @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypefn

@deftypefn @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftypefn

@deftypevr @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypevr

@deftypevr @code{A1} @t{A2} @code{A3} @code{A4} @code{A5}
@end deftypevr

@deftp @var{A1} @var{A2} @var{A3} @var{A4}
@end deftp

@deftp @code{A1} @code{A2} @code{A3} @code{A4}
@end deftp

@defcv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defcv

@deftp @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftp

@deftypecv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypecv

@deftypecv @code{A1} @code{A2} @option{A3} @code{A4} @code{A5} @code{A6}
@end deftypecv

@defop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defop

@defop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end defop

@deftypeop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypeop

@deftypeop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5} @code{A6}
@end deftypeop

@deftypefn {code then var} {ret_type} {fun_name} @code{A1} @var{A2} @code{A3} @var{A4}
@end deftypefn

@deftypefn {var then code} {ret_type1} {fun_name1} @var{A1} @code{A2} @var{A3} @code{A4}
@end deftypefn

@heading Functions
@printindex fn

@heading Types
@printindex tp

@heading Variables
@printindex vr
';


$result_texts{'all_commands_delimiters_printindex'} = '
Command: forward--char nchars argument2 argument3         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Variable: fill-column argument1 argument2         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Library Function: int foobar (int foo, float bar)

Library Function: int foobar (int foo, float bar)         (arg in brace, [something in v--ar, in, b , comma apref p]) ct

 last

Library Function: int foobug [something

stacks: private push (s:in out stack;                  n:in integer) ; ;barg aarg; ; end

Global Flag: int enable (arg in brace, [something in v--ar, in, b , comma apref p]) last

Data type: pair car cdr         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Class Option of Window: border-pattern (arg in brace, [something in v--ar, in, b , comma apref p]) last

Class Option2 of Window: int border-pattern (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation on windows: expose (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation2 on W,indow: int expose (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation5 on Window: int expose type arg

Operation3 on W,indow: int e,xpose type arg

Operation4 on ,Window: int ,expose type arg

Operation6 on W,indow: int e,xpose type arg

Operation7 on ,Window: int ,expose type arg

Operation13 on W)indow: int e)xpose type arg

Operation14 on )Window: int )expose type arg

Operation16 on W)indow: int e)xpose type arg

Operation17 on )Window: int )expose type arg

Operation18 on W;indow: int e;xpose type arg

Operation19 on ;Window: int ;expose type arg

Operation20 on W;indow: int e;xpose type arg

Operation21 on ;Window: int ;expose type arg

Commandcom on Windowint: exposeexp name

Function: apply function &rest arguments

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4

A1: A2 A3 A4

A1 of A2: A3 A4 A5

A1: A2 A3 A4 A5

A1 of A2: A3 A4 A5 A6

A1 of A2: A3 A4 A5 A6

A1 on A2: A3 A4 A5

A1 on A2: A3 A4 A5

A1 on A2: A3 A4 A5 A6

A1 on A2: A3 A4 A5 A6

code then var: ret_type fun_name A1 A2 A3 A4

var then code: ret_type1 fun_name1 A1 A2 A3 A4

Functions
=========

Types
=====

Variables
=========
';

$result_errors{'all_commands_delimiters_printindex'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'all_commands_delimiters_printindex'} = 'fn:
 ,expose on ,Window
 ,expose on ,Window
 ;expose on ;Window
 ;expose on ;Window
 )expose on )Window
 )expose on )Window
 A2
 A2
 A3
 A3
 A3 on A2
 A3 on A2
 A4 on A2
 A4 on A2
 apply
 e,xpose on W,indow
 e,xpose on W,indow
 e;xpose on W;indow
 e;xpose on W;indow
 e)xpose on W)indow
 e)xpose on W)indow
 expose on W,indow
 expose on Window
 expose on windows
 foobar
 foobar
 foobug
 forward--char
 fun_name
 fun_name1
 name on Windowint
 push
tp:
 A2
 A2
 A2
 pair
vr:
 A2
 A2
 A3
 A3
 A3
 A4 of A2
 A4 of A2
 border-pattern
 border-pattern of Window
 enable
 fill-column
';


$result_converted{'info'}->{'all_commands_delimiters_printindex'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 -- Command: FORWARD--CHAR NCHARS argument2 argument3 (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) last

 -- Variable: fill-column argument1 argument2 (arg in brace, [something
          IN V--AR, in, b , comma aPREF p]) last

 -- Library Function: int foobar (int FOO, float BAR)

 -- Library Function: int foobar (int FOO, float BAR) (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) ct

          last

 -- Library Function: int foobug [something

 -- stacks: private push (S:in out stack; N:in integer) ; ;barg aarg; ;
          end

 -- Global Flag: int enable (arg in brace, [something IN V--AR, in, b ,
          comma aPREF p]) last

 -- Data type: pair car cdr (arg in brace, [something IN V--AR, in, b ,
          comma aPREF p]) last

 -- Class Option of Window: border-pattern (arg in brace, [something IN
          V--AR, in, b , comma aPREF p]) last

 -- Class Option2 of Window: int border-pattern (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) last

 -- Operation on windows: expose (arg in brace, [something IN V--AR, in,
          b , comma aPREF p]) last

 -- Operation2 on W,indow: int expose (arg in brace, [something IN
          V--AR, in, b , comma aPREF p]) last

 -- Operation5 on Window: int expose type arg

 -- Operation3 on W,indow: int e,xpose type arg

 -- Operation4 on ,Window: int ,expose type arg

 -- Operation6 on W,indow: int e,xpose type arg

 -- Operation7 on ,Window: int ,expose type arg

 -- Operation13 on W)indow: int e)xpose type arg

 -- Operation14 on )Window: int )expose type arg

 -- Operation16 on W)indow: int e)xpose type arg

 -- Operation17 on )Window: int )expose type arg

 -- Operation18 on W;indow: int e;xpose type arg

 -- Operation19 on ;Window: int ;expose type arg

 -- Operation20 on W;indow: int e;xpose type arg

 -- Operation21 on ;Window: int ;expose type arg

 -- Commandcom on Windowint: exposeEXP name

 -- Function: apply function &rest arguments

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1 of A2: A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1 of A2: A3 A4 A5 A6

 -- A1 of A2: A3 A4 A5 A6

 -- A1 on A2: A3 A4 A5

 -- A1 on A2: A3 A4 A5

 -- A1 on A2: A3 A4 A5 A6

 -- A1 on A2: A3 A4 A5 A6

 -- code then var: ret_type fun_name A1 A2 A3 A4

 -- var then code: ret_type1 fun_name1 A1 A2 A3 A4

Functions
=========

 [index ]
* Menu:

* ,expose on ,Window:                    chap.                (line  43)
* ,expose on ,Window <1>:                chap.                (line  47)
* ;expose on ;Window:                    chap.                (line  59)
* ;expose on ;Window <1>:                chap.                (line  63)
* )expose on )Window:                    chap.                (line  51)
* )expose on )Window <1>:                chap.                (line  55)
* A2:                                    chap.                (line  69)
* A2 <1>:                                chap.                (line  71)
* A3:                                    chap.                (line  77)
* A3 <1>:                                chap.                (line  79)
* A3 on A2:                              chap.                (line  97)
* A3 on A2 <1>:                          chap.                (line  99)
* A4 on A2:                              chap.                (line 101)
* A4 on A2 <1>:                          chap.                (line 103)
* apply:                                 chap.                (line  67)
* e,xpose on W,indow:                    chap.                (line  41)
* e,xpose on W,indow <1>:                chap.                (line  45)
* e;xpose on W;indow:                    chap.                (line  57)
* e;xpose on W;indow <1>:                chap.                (line  61)
* e)xpose on W)indow:                    chap.                (line  49)
* e)xpose on W)indow <1>:                chap.                (line  53)
* expose on W,indow:                     chap.                (line  36)
* expose on Window:                      chap.                (line  39)
* expose on windows:                     chap.                (line  33)
* foobar:                                chap.                (line   9)
* foobar <1>:                            chap.                (line  11)
* foobug:                                chap.                (line  16)
* FORWARD--CHAR:                         chap.                (line   3)
* fun_name:                              chap.                (line 105)
* fun_name1:                             chap.                (line 107)
* name on Windowint:                     chap.                (line  65)
* push:                                  chap.                (line  18)

Types
=====

 [index ]
* Menu:

* A2:                                    chap.                 (line 85)
* A2 <1>:                                chap.                 (line 87)
* A2 <2>:                                chap.                 (line 91)
* pair:                                  chap.                 (line 24)

Variables
=========

 [index ]
* Menu:

* A2:                                    chap.                 (line 73)
* A2 <1>:                                chap.                 (line 75)
* A3:                                    chap.                 (line 81)
* A3 <1>:                                chap.                 (line 83)
* A3 <2>:                                chap.                 (line 89)
* A4 of A2:                              chap.                 (line 93)
* A4 of A2 <1>:                          chap.                 (line 95)
* border-pattern:                        chap.                 (line 27)
* border-pattern of Window:              chap.                 (line 30)
* enable:                                chap.                 (line 21)
* fill-column:                           chap.                 (line  6)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'all_commands_delimiters_printindex'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#chap" rel="index" title="chap">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
table.index-entries-printindex {border-spacing: 0 0.5em}
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top; padding-left: 1em}
th.index-letter-header-printindex {text-align: left; font-size: 150%; padding-bottom: 0.5em; padding-top: 0.5em; border-width: thin; border-top-style: solid}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-forward_002d_002dchar"><span class="category-def">Command: </span><span><strong class="def-name"><var class="var">forward--char</var></strong> <var class="def-var-arguments"><var class="var">nchars</var> argument2 argument3         (arg in brace, [something <var class="var">in v&ndash;ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</var><a class="copiable-link" href="#index-forward_002d_002dchar"> &para;</a></span></dt>
</dl>

<dl class="first-defvr def-block">
<dt class="defvr def-line" id="index-fill_002dcolumn"><span class="category-def">Variable: </span><span><strong class="def-name">fill-column</strong> <var class="def-var-arguments">argument1 argument2         (arg in brace, [something <var class="var">in v&ndash;ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</var><a class="copiable-link" href="#index-fill_002dcolumn"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-foobar"><span class="category-def">Library Function: </span><span><code class="def-type">int</code> <strong class="def-name">foobar</strong> <code class="def-code-arguments">(int <var class="var">foo</var>, float <var class="var">bar</var>)</code><a class="copiable-link" href="#index-foobar"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-foobar-1"><span class="category-def">Library Function: </span><span><code class="def-type">int</code> <strong class="def-name">foobar</strong> <code class="def-code-arguments">(int <var class="var">foo</var>, float <var class="var">bar</var>)         (arg in brace, [something <var class="var">in v--ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) ct<br><br> last</code><a class="copiable-link" href="#index-foobar-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-foobug"><span class="category-def">Library Function: </span><span><code class="def-type">int</code> <strong class="def-name">foobug</strong> <code class="def-code-arguments">[something</code><a class="copiable-link" href="#index-foobug"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-push"><span class="category-def">stacks: </span><span><code class="def-type">private</code> <strong class="def-name">push</strong> <code class="def-code-arguments">(<var class="var">s</var>:in out stack;                  <var class="var">n</var>:in integer) ; ;barg aarg; ; end</code><a class="copiable-link" href="#index-push"> &para;</a></span></dt>
</dl>

<dl class="first-deftypevr def-block">
<dt class="deftypevr def-line" id="index-enable"><span class="category-def">Global Flag: </span><span><code class="def-type">int</code> <strong class="def-name">enable</strong> <code class="def-code-arguments">(arg in brace, [something <var class="var">in v--ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</code><a class="copiable-link" href="#index-enable"> &para;</a></span></dt>
</dl>

<dl class="first-deftp def-block">
<dt class="deftp def-line" id="index-pair"><span class="category-def">Data type: </span><span><strong class="def-name">pair</strong> <var class="def-var-arguments">car cdr         (arg in brace, [something <var class="var">in v&ndash;ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</var><a class="copiable-link" href="#index-pair"> &para;</a></span></dt>
</dl>

<dl class="first-defcv def-block">
<dt class="defcv def-line" id="index-border_002dpattern"><span class="category-def">Class Option of <code class="code">Window</code>: </span><span><strong class="def-name">border-pattern</strong> <var class="def-var-arguments">(arg in brace, [something <var class="var">in v&ndash;ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</var><a class="copiable-link" href="#index-border_002dpattern"> &para;</a></span></dt>
</dl>

<dl class="first-deftypecv def-block">
<dt class="deftypecv def-line" id="index-border_002dpattern-of-Window"><span class="category-def">Class Option2 of <code class="code">Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">border-pattern</strong> <code class="def-code-arguments">(arg in brace, [something <var class="var">in v--ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</code><a class="copiable-link" href="#index-border_002dpattern-of-Window"> &para;</a></span></dt>
</dl>

<dl class="first-defop def-block">
<dt class="defop def-line" id="index-expose-on-windows"><span class="category-def">Operation on <code class="code">windows</code>: </span><span><strong class="def-name">expose</strong> <var class="def-var-arguments">(arg in brace, [something <var class="var">in v&ndash;ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</var><a class="copiable-link" href="#index-expose-on-windows"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-expose-on-W_002cindow"><span class="category-def">Operation2 on <code class="code">W,indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">expose</strong> <code class="def-code-arguments">(arg in brace, [something <var class="var">in v--ar</var>, <b class="b">in, b</b> , comma a<var class="var">pref</var> p]) last</code><a class="copiable-link" href="#index-expose-on-W_002cindow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-expose-on-Window"><span class="category-def">Operation5 on <code class="code">Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-expose-on-Window"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_002cxpose-on-W_002cindow"><span class="category-def">Operation3 on <code class="code">W,indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e,xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_002cxpose-on-W_002cindow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_002cexpose-on-_002cWindow"><span class="category-def">Operation4 on <code class="code">,Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">,expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_002cexpose-on-_002cWindow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_002cxpose-on-W_002cindow-1"><span class="category-def">Operation6 on <code class="code">W,indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e,xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_002cxpose-on-W_002cindow-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_002cexpose-on-_002cWindow-1"><span class="category-def">Operation7 on <code class="code">,Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">,expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_002cexpose-on-_002cWindow-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_0029xpose-on-W_0029indow"><span class="category-def">Operation13 on <code class="code">W)indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e)xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_0029xpose-on-W_0029indow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_0029expose-on-_0029Window"><span class="category-def">Operation14 on <code class="code">)Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">)expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_0029expose-on-_0029Window"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_0029xpose-on-W_0029indow-1"><span class="category-def">Operation16 on <code class="code">W)indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e)xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_0029xpose-on-W_0029indow-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_0029expose-on-_0029Window-1"><span class="category-def">Operation17 on <code class="code">)Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">)expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_0029expose-on-_0029Window-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_003bxpose-on-W_003bindow"><span class="category-def">Operation18 on <code class="code">W;indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e;xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_003bxpose-on-W_003bindow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_003bexpose-on-_003bWindow"><span class="category-def">Operation19 on <code class="code">;Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">;expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_003bexpose-on-_003bWindow"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-e_003bxpose-on-W_003bindow-1"><span class="category-def">Operation20 on <code class="code">W;indow</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">e;xpose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-e_003bxpose-on-W_003bindow-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-_003bexpose-on-_003bWindow-1"><span class="category-def">Operation21 on <code class="code">;Window</code>: </span><span><code class="def-type"><code class="code">int</code></code> <strong class="def-name">;expose</strong> <code class="def-code-arguments">type arg</code><a class="copiable-link" href="#index-_003bexpose-on-_003bWindow-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-name-on-Windowint"><span class="category-def">Command<code class="code">com</code> on <code class="code">Window<code class="code">int</code></code>: </span><span><code class="def-type">expose<var class="var">exp</var></code> <strong class="def-name">name</strong><a class="copiable-link" href="#index-name-on-Windowint"> &para;</a></span></dt>
</dl>

<dl class="first-deffn first-defun-alias-first-deffn def-block">
<dt class="deffn defun-alias-deffn def-line" id="index-apply"><span class="category-def">Function: </span><span><strong class="def-name">apply</strong> <var class="def-var-arguments">function &amp;rest arguments</var><a class="copiable-link" href="#index-apply"> &para;</a></span></dt>
</dl>

<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-A2"><span class="category-def"><var class="var">A1</var>: </span><span><strong class="def-name"><var class="var">A2</var></strong> <var class="def-var-arguments"><var class="var">A3</var> <var class="var">A4</var></var><a class="copiable-link" href="#index-A2"> &para;</a></span></dt>
</dl>

<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-A2-1"><span class="category-def"><code class="code">A1</code>: </span><span><strong class="def-name"><code class="code">A2</code></strong> <var class="def-var-arguments"><code class="code">A3</code> <code class="code">A4</code></var><a class="copiable-link" href="#index-A2-1"> &para;</a></span></dt>
</dl>

<dl class="first-defvr def-block">
<dt class="defvr def-line" id="index-A2-5"><span class="category-def"><var class="var">A1</var>: </span><span><strong class="def-name"><var class="var">A2</var></strong> <var class="def-var-arguments"><var class="var">A3</var> <var class="var">A4</var></var><a class="copiable-link" href="#index-A2-5"> &para;</a></span></dt>
</dl>

<dl class="first-defvr def-block">
<dt class="defvr def-line" id="index-A2-6"><span class="category-def"><code class="code">A1</code>: </span><span><strong class="def-name"><code class="code">A2</code></strong> <var class="def-var-arguments"><code class="code">A3</code> <code class="code">A4</code></var><a class="copiable-link" href="#index-A2-6"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-A3"><span class="category-def"><var class="var">A1</var>: </span><span><code class="def-type"><var class="var">A2</var></code> <strong class="def-name"><var class="var">A3</var></strong> <code class="def-code-arguments"><var class="var">A4</var> <var class="var">A5</var></code><a class="copiable-link" href="#index-A3"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-A3-1"><span class="category-def"><code class="code">A1</code>: </span><span><code class="def-type"><code class="code">A2</code></code> <strong class="def-name"><code class="code">A3</code></strong> <code class="def-code-arguments"><code class="code">A4</code> <code class="code">A5</code></code><a class="copiable-link" href="#index-A3-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypevr def-block">
<dt class="deftypevr def-line" id="index-A3-2"><span class="category-def"><var class="var">A1</var>: </span><span><code class="def-type"><var class="var">A2</var></code> <strong class="def-name"><var class="var">A3</var></strong> <code class="def-code-arguments"><var class="var">A4</var> <var class="var">A5</var></code><a class="copiable-link" href="#index-A3-2"> &para;</a></span></dt>
</dl>

<dl class="first-deftypevr def-block">
<dt class="deftypevr def-line" id="index-A3-3"><span class="category-def"><code class="code">A1</code>: </span><span><code class="def-type"><code class="t">A2</code></code> <strong class="def-name"><code class="code">A3</code></strong> <code class="def-code-arguments"><code class="code">A4</code> <code class="code">A5</code></code><a class="copiable-link" href="#index-A3-3"> &para;</a></span></dt>
</dl>

<dl class="first-deftp def-block">
<dt class="deftp def-line" id="index-A2-2"><span class="category-def"><var class="var">A1</var>: </span><span><strong class="def-name"><var class="var">A2</var></strong> <var class="def-var-arguments"><var class="var">A3</var> <var class="var">A4</var></var><a class="copiable-link" href="#index-A2-2"> &para;</a></span></dt>
</dl>

<dl class="first-deftp def-block">
<dt class="deftp def-line" id="index-A2-3"><span class="category-def"><code class="code">A1</code>: </span><span><strong class="def-name"><code class="code">A2</code></strong> <var class="def-var-arguments"><code class="code">A3</code> <code class="code">A4</code></var><a class="copiable-link" href="#index-A2-3"> &para;</a></span></dt>
</dl>

<dl class="first-defcv def-block">
<dt class="defcv def-line" id="index-A3-4"><span class="category-def"><var class="var">A1</var> of <code class="code"><var class="var">A2</var></code>: </span><span><strong class="def-name"><var class="var">A3</var></strong> <var class="def-var-arguments"><var class="var">A4</var> <var class="var">A5</var></var><a class="copiable-link" href="#index-A3-4"> &para;</a></span></dt>
</dl>

<dl class="first-deftp def-block">
<dt class="deftp def-line" id="index-A2-4"><span class="category-def"><code class="code">A1</code>: </span><span><strong class="def-name"><code class="code">A2</code></strong> <var class="def-var-arguments"><code class="code">A3</code> <code class="code">A4</code> <code class="code">A5</code></var><a class="copiable-link" href="#index-A2-4"> &para;</a></span></dt>
</dl>

<dl class="first-deftypecv def-block">
<dt class="deftypecv def-line" id="index-A4-of-A2"><span class="category-def"><var class="var">A1</var> of <code class="code"><var class="var">A2</var></code>: </span><span><code class="def-type"><var class="var">A3</var></code> <strong class="def-name"><var class="var">A4</var></strong> <code class="def-code-arguments"><var class="var">A5</var> <var class="var">A6</var></code><a class="copiable-link" href="#index-A4-of-A2"> &para;</a></span></dt>
</dl>

<dl class="first-deftypecv def-block">
<dt class="deftypecv def-line" id="index-A4-of-A2-1"><span class="category-def"><code class="code">A1</code> of <code class="code"><code class="code">A2</code></code>: </span><span><code class="def-type"><samp class="option">A3</samp></code> <strong class="def-name"><code class="code">A4</code></strong> <code class="def-code-arguments"><code class="code">A5</code> <code class="code">A6</code></code><a class="copiable-link" href="#index-A4-of-A2-1"> &para;</a></span></dt>
</dl>

<dl class="first-defop def-block">
<dt class="defop def-line" id="index-A3-on-A2"><span class="category-def"><var class="var">A1</var> on <code class="code"><var class="var">A2</var></code>: </span><span><strong class="def-name"><var class="var">A3</var></strong> <var class="def-var-arguments"><var class="var">A4</var> <var class="var">A5</var></var><a class="copiable-link" href="#index-A3-on-A2"> &para;</a></span></dt>
</dl>

<dl class="first-defop def-block">
<dt class="defop def-line" id="index-A3-on-A2-1"><span class="category-def"><code class="code">A1</code> on <code class="code"><code class="code">A2</code></code>: </span><span><strong class="def-name"><code class="code">A3</code></strong> <var class="def-var-arguments"><code class="code">A4</code> <code class="code">A5</code></var><a class="copiable-link" href="#index-A3-on-A2-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-A4-on-A2"><span class="category-def"><var class="var">A1</var> on <code class="code"><var class="var">A2</var></code>: </span><span><code class="def-type"><var class="var">A3</var></code> <strong class="def-name"><var class="var">A4</var></strong> <code class="def-code-arguments"><var class="var">A5</var> <var class="var">A6</var></code><a class="copiable-link" href="#index-A4-on-A2"> &para;</a></span></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-A4-on-A2-1"><span class="category-def"><code class="code">A1</code> on <code class="code"><code class="code">A2</code></code>: </span><span><code class="def-type"><code class="code">A3</code></code> <strong class="def-name"><code class="code">A4</code></strong> <code class="def-code-arguments"><code class="code">A5</code> <code class="code">A6</code></code><a class="copiable-link" href="#index-A4-on-A2-1"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-fun_005fname"><span class="category-def">code then var: </span><span><code class="def-type">ret_type</code> <strong class="def-name">fun_name</strong> <code class="def-code-arguments"><code class="code">A1</code> <var class="var">A2</var> <code class="code">A3</code> <var class="var">A4</var></code><a class="copiable-link" href="#index-fun_005fname"> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-fun_005fname1"><span class="category-def">var then code: </span><span><code class="def-type">ret_type1</code> <strong class="def-name">fun_name1</strong> <code class="def-code-arguments"><var class="var">A1</var> <code class="code">A2</code> <var class="var">A3</var> <code class="code">A4</code></code><a class="copiable-link" href="#index-fun_005fname1"> &para;</a></span></dt>
</dl>

<h3 class="heading" id="Functions"><span>Functions<a class="copiable-link" href="#Functions"> &para;</a></span></h3>
<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_symbol-1"><b>,</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_symbol-2"><b>;</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_symbol-3"><b>)</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-P"><b>P</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_symbol-1">,</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002cexpose-on-_002cWindow"><code>,expose on ,Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002cexpose-on-_002cWindow-1"><code>,expose on ,Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_symbol-2">;</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_003bexpose-on-_003bWindow"><code>;expose on ;Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-_003bexpose-on-_003bWindow-1"><code>;expose on ;Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_symbol-3">)</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_0029expose-on-_0029Window"><code>)expose on )Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-_0029expose-on-_0029Window-1"><code>)expose on )Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2"><code><var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-1"><code><code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3"><code><var class="var">A3</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-1"><code><code class="code">A3</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-on-A2"><code><var class="var">A3</var> on <var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-on-A2-1"><code><code class="code">A3</code> on <code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A4-on-A2"><code><var class="var">A4</var> on <var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A4-on-A2-1"><code><code class="code">A4</code> on <code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-apply"><code>apply</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-E">E</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_002cxpose-on-W_002cindow"><code>e,xpose on W,indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_002cxpose-on-W_002cindow-1"><code>e,xpose on W,indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_003bxpose-on-W_003bindow"><code>e;xpose on W;indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_003bxpose-on-W_003bindow-1"><code>e;xpose on W;indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_0029xpose-on-W_0029indow"><code>e)xpose on W)indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-e_0029xpose-on-W_0029indow-1"><code>e)xpose on W)indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-expose-on-W_002cindow"><code>expose on W,indow</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-expose-on-Window"><code>expose on Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-expose-on-windows"><code>expose on windows</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-foobar"><code>foobar</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-foobar-1"><code>foobar</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-foobug"><code>foobug</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-forward_002d_002dchar"><code><var class="var">forward--char</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-fun_005fname"><code>fun_name</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-fun_005fname1"><code>fun_name1</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-N">N</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-name-on-Windowint"><code>name on Window<code class="code">int</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-P">P</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-push"><code>push</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_symbol-1"><b>,</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_symbol-2"><b>;</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_symbol-3"><b>)</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-P"><b>P</b></a>
 &nbsp; 
</td></tr></table>
</div>

<h3 class="heading" id="Types"><span>Types<a class="copiable-link" href="#Types"> &para;</a></span></h3>
<div class="printindex tp-printindex">
<table class="index-letters-header-printindex tp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_tp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_tp_letter-P"><b>P</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex tp-entries-printindex">
<tr><th class="index-letter-header-printindex tp-letter-header-printindex" colspan="2" id="chap_tp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-2"><code><var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-3"><code><code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-4"><code><code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex tp-letter-header-printindex" colspan="2" id="chap_tp_letter-P">P</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-pair"><code>pair</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex tp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_tp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_tp_letter-P"><b>P</b></a>
 &nbsp; 
</td></tr></table>
</div>

<h3 class="heading" id="Variables"><span>Variables<a class="copiable-link" href="#Variables"> &para;</a></span></h3>
<div class="printindex vr-printindex">
<table class="index-letters-header-printindex vr-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex vr-entries-printindex">
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-5"><code><var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A2-6"><code><code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-2"><code><var class="var">A3</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-3"><code><code class="code">A3</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A3-4"><code><var class="var">A3</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A4-of-A2"><code><var class="var">A4</var> of <var class="var">A2</var></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-A4-of-A2-1"><code><code class="code">A4</code> of <code class="code">A2</code></code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_letter-B">B</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-border_002dpattern"><code>border-pattern</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-border_002dpattern-of-Window"><code>border-pattern of Window</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_letter-E">E</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-enable"><code>enable</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-fill_002dcolumn"><code>fill-column</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex vr-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'all_commands_delimiters_printindex'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
