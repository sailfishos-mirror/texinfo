use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'many_lines'} = '*document_root C1
 *before_node_section C9
  *paragraph C21
   {pagesizes }
   *@pagesizes C1 l1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {200mm,150mm following }
     *@@
     {pagesizes arg}
   {afourpaper }
   *@afourpaper C1 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following afourpaper}
   {smallbook }
   *@smallbook C1 l3
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following smallbook}
   {headings }
   *@headings C1 l4
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following headings}
   {oddfooting }
   *@oddfooting C1 l5
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following oddfooting}
   {everyheading }
   *@everyheading C1 l6
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following everyheading}
   {everyfooting }
   *@everyfooting C1 l7
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following everyfooting}
   {evenheading }
   *@evenheading C1 l8
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following evenheading}
   {evenfooting }
   *@evenfooting C1 l9
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following evenfooting}
   {oddheading }
   *@oddheading C1 l10
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following}
   {need }
  *@need C1 l11
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {0.1 on line following}
  *paragraph C1
   {need }
  *@need C1 l12
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |misc_args:A{0.1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {0.1}
  *paragraph C47
   {setchapternewpage }
   *@setchapternewpage C1 l13
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on line following setchapternewpage}
   {raisesections }
   *@raisesections C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following raisesections}
   {lowersections }
   *@lowersections C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following lowersections}
   {kbdinputstyle code }
   *@kbdinputstyle C1 l16
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {code something}
   {afourpaper }
   *@afourpaper C1 l17
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following afourpaper}
   {afourlatex }
   *@afourlatex C1 l18
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following afourlatex}
   {afourwide }
   *@afourwide C1 l19
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:on line following afourwide}
   {paragraphindent asis }
   *@paragraphindent C1 l20
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{asis}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {asis}
   {paragraphindent 0 }
   *@paragraphindent C1 l21
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{0}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {0}
   {paragraphindent none }
   *@paragraphindent C1 l22
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{3}
   |misc_args:A{none}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {none}
   {paragraphindent 4 }
   *@paragraphindent C1 l23
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{4}
   |misc_args:A{4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {4}
   {firstparagraphindent insert }
   *@firstparagraphindent C1 l24
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{insert}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {insert}
   {firstparagraphindent 3 }
   *@firstparagraphindent C1 l25
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {3}
   {exampleindent 6 }
   *@exampleindent C1 l26
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {6 on line following exampleindent}
   {exampleindent 6 }
   *@exampleindent C1 l27
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{6}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {6}
   {footnotestyle }
   *@footnotestyle C1 l28
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{end}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument: \\n}
     {end}
   {footnotestyle }
   *@footnotestyle C1 l29
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{separate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument: \\n}
     {separate}
   {documentencoding }
   *@documentencoding C1 l30
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{US-ascii encoding name}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {US-ascii encoding name}
   *@documentencoding C1 l31
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {ISO-8859-1}
   {frenchspacing }
   *@frenchspacing C1 l32
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{on}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {on}
   {frenchspacing }
   *@frenchspacing C1 l33
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{off}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {off}
   {fonttextsize }
   *@fonttextsize C1 l34
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{10}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {10}
   {everyheadingmarks }
   *@everyheadingmarks C1 l35
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {bottom on line following everyheadingmarks}
   *@allowcodebreaks C1 l36
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{false}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {false}
   *@allowcodebreaks C1 l37
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{true}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {true}
  {empty_line:\\n}
  *paragraph C6
   {Text line followed by finalout on the same line and another below }
   *@finalout C1
    *line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *@finalout C1
    *line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   {Text line after the finalout followed by a fianlout }
   *@finalout C1
    *line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   {Text line after the text line followed by the finalout.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Test text after finalout\\n}
   *@finalout C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {rawline_text:a word after finalout}
   {Line after finalout\\n}
';


$result_texis{'many_lines'} = 'pagesizes @pagesizes 200mm,150mm following @@pagesizes arg
afourpaper @afourpaper on line following afourpaper
smallbook @smallbook on line following smallbook
headings @headings on line following headings
oddfooting @oddfooting on line following oddfooting
everyheading @everyheading on line following everyheading
everyfooting @everyfooting on line following everyfooting
evenheading @evenheading on line following evenheading
evenfooting @evenfooting on line following evenfooting
oddheading @oddheading on line following
need @need 0.1 on line following
need @need 0.1
setchapternewpage @setchapternewpage on line following setchapternewpage
raisesections @raisesections on line following raisesections
lowersections @lowersections on line following lowersections
kbdinputstyle code @kbdinputstyle code something
afourpaper @afourpaper on line following afourpaper
afourlatex @afourlatex on line following afourlatex
afourwide @afourwide on line following afourwide
paragraphindent asis @paragraphindent asis
paragraphindent 0 @paragraphindent 0
paragraphindent none @paragraphindent none
paragraphindent 4 @paragraphindent 4
firstparagraphindent insert @firstparagraphindent insert
firstparagraphindent 3 @firstparagraphindent 3
exampleindent 6 @exampleindent 6 on line following exampleindent
exampleindent 6 @exampleindent 6
footnotestyle @footnotestyle end 
footnotestyle @footnotestyle separate 
documentencoding @documentencoding US-ascii encoding name
@documentencoding ISO-8859-1
frenchspacing @frenchspacing on
frenchspacing @frenchspacing off
fonttextsize @fonttextsize 10
everyheadingmarks @everyheadingmarks bottom on line following everyheadingmarks
@allowcodebreaks false
@allowcodebreaks true

Text line followed by finalout on the same line and another below @finalout
@finalout
Text line after the finalout followed by a fianlout @finalout
Text line after the text line followed by the finalout.

Test text after finalout
@finalout a word after finalout
Line after finalout
';


$result_texts{'many_lines'} = 'pagesizes afourpaper smallbook headings oddfooting everyheading everyfooting evenheading evenfooting oddheading need need setchapternewpage raisesections lowersections kbdinputstyle code afourpaper afourlatex afourwide paragraphindent asis paragraphindent 0 paragraphindent none paragraphindent 4 firstparagraphindent insert firstparagraphindent 3 exampleindent 6 exampleindent 6 footnotestyle footnotestyle documentencoding frenchspacing frenchspacing fonttextsize everyheadingmarks 
Text line followed by finalout on the same line and another below Text line after the finalout followed by a fianlout Text line after the text line followed by the finalout.

Test text after finalout
Line after finalout
';

$result_errors{'many_lines'} = [
  {
    'error_line' => 'warning: @pagesizes should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@pagesizes should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @afourpaper should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@afourpaper should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @afourpaper line: on line following afourpaper
',
    'line_nr' => 2,
    'text' => 'remaining argument on @afourpaper line: on line following afourpaper',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @smallbook should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@smallbook should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @smallbook line: on line following smallbook
',
    'line_nr' => 3,
    'text' => 'remaining argument on @smallbook line: on line following smallbook',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @headings should only appear at the beginning of a line
',
    'line_nr' => 4,
    'text' => '@headings should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @headings: on line following headings
',
    'line_nr' => 4,
    'text' => 'bad argument to @headings: on line following headings',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @oddfooting should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@oddfooting should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @everyheading should only appear at the beginning of a line
',
    'line_nr' => 6,
    'text' => '@everyheading should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @everyfooting should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@everyfooting should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @evenheading should only appear at the beginning of a line
',
    'line_nr' => 8,
    'text' => '@evenheading should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @evenfooting should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@evenfooting should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @oddheading should only appear at the beginning of a line
',
    'line_nr' => 10,
    'text' => '@oddheading should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @need should only appear at the beginning of a line
',
    'line_nr' => 11,
    'text' => '@need should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @need: 0.1 on line following
',
    'line_nr' => 11,
    'text' => 'bad argument to @need: 0.1 on line following',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @need should only appear at the beginning of a line
',
    'line_nr' => 12,
    'text' => '@need should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setchapternewpage should only appear at the beginning of a line
',
    'line_nr' => 13,
    'text' => '@setchapternewpage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@setchapternewpage arg must be `on\', `off\' or `odd\', not `on line following setchapternewpage\'
',
    'line_nr' => 13,
    'text' => '@setchapternewpage arg must be `on\', `off\' or `odd\', not `on line following setchapternewpage\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @raisesections should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@raisesections should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @raisesections line: on line following raisesections
',
    'line_nr' => 14,
    'text' => 'remaining argument on @raisesections line: on line following raisesections',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @lowersections should only appear at the beginning of a line
',
    'line_nr' => 15,
    'text' => '@lowersections should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @lowersections line: on line following lowersections
',
    'line_nr' => 15,
    'text' => 'remaining argument on @lowersections line: on line following lowersections',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @kbdinputstyle should only appear at the beginning of a line
',
    'line_nr' => 16,
    'text' => '@kbdinputstyle should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@kbdinputstyle arg must be `code\'/`example\'/`distinct\', not `code something\'
',
    'line_nr' => 16,
    'text' => '@kbdinputstyle arg must be `code\'/`example\'/`distinct\', not `code something\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @afourpaper should only appear at the beginning of a line
',
    'line_nr' => 17,
    'text' => '@afourpaper should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @afourpaper line: on line following afourpaper
',
    'line_nr' => 17,
    'text' => 'remaining argument on @afourpaper line: on line following afourpaper',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @afourpaper
',
    'line_nr' => 17,
    'text' => 'multiple @afourpaper',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @afourlatex should only appear at the beginning of a line
',
    'line_nr' => 18,
    'text' => '@afourlatex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @afourlatex line: on line following afourlatex
',
    'line_nr' => 18,
    'text' => 'remaining argument on @afourlatex line: on line following afourlatex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @afourwide should only appear at the beginning of a line
',
    'line_nr' => 19,
    'text' => '@afourwide should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @afourwide line: on line following afourwide
',
    'line_nr' => 19,
    'text' => 'remaining argument on @afourwide line: on line following afourwide',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @paragraphindent should only appear at the beginning of a line
',
    'line_nr' => 20,
    'text' => '@paragraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @paragraphindent should only appear at the beginning of a line
',
    'line_nr' => 21,
    'text' => '@paragraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @paragraphindent should only appear at the beginning of a line
',
    'line_nr' => 22,
    'text' => '@paragraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @paragraphindent should only appear at the beginning of a line
',
    'line_nr' => 23,
    'text' => '@paragraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @firstparagraphindent should only appear at the beginning of a line
',
    'line_nr' => 24,
    'text' => '@firstparagraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @firstparagraphindent should only appear at the beginning of a line
',
    'line_nr' => 25,
    'text' => '@firstparagraphindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@firstparagraphindent arg must be `none\' or `insert\', not `3\'
',
    'line_nr' => 25,
    'text' => '@firstparagraphindent arg must be `none\' or `insert\', not `3\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @exampleindent should only appear at the beginning of a line
',
    'line_nr' => 26,
    'text' => '@exampleindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@exampleindent arg must be numeric/`asis\', not `6 on line following exampleindent\'
',
    'line_nr' => 26,
    'text' => '@exampleindent arg must be numeric/`asis\', not `6 on line following exampleindent\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @exampleindent should only appear at the beginning of a line
',
    'line_nr' => 27,
    'text' => '@exampleindent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnotestyle should only appear at the beginning of a line
',
    'line_nr' => 28,
    'text' => '@footnotestyle should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnotestyle should only appear at the beginning of a line
',
    'line_nr' => 29,
    'text' => '@footnotestyle should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @footnotestyle
',
    'line_nr' => 29,
    'text' => 'multiple @footnotestyle',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @documentencoding should only appear at the beginning of a line
',
    'line_nr' => 30,
    'text' => '@documentencoding should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: encoding `US-ascii encoding name\' is not a canonical texinfo encoding
',
    'line_nr' => 30,
    'text' => 'encoding `US-ascii encoding name\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `US-ascii encoding name\'
',
    'line_nr' => 30,
    'text' => 'unhandled encoding name `US-ascii encoding name\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @frenchspacing should only appear at the beginning of a line
',
    'line_nr' => 32,
    'text' => '@frenchspacing should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @frenchspacing should only appear at the beginning of a line
',
    'line_nr' => 33,
    'text' => '@frenchspacing should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @fonttextsize should only appear at the beginning of a line
',
    'line_nr' => 34,
    'text' => '@fonttextsize should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @everyheadingmarks should only appear at the beginning of a line
',
    'line_nr' => 35,
    'text' => '@everyheadingmarks should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@everyheadingmarks arg must be `top\' or `bottom\', not `bottom on line following everyheadingmarks\'
',
    'line_nr' => 35,
    'text' => '@everyheadingmarks arg must be `top\' or `bottom\', not `bottom on line following everyheadingmarks\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @finalout should only appear at the beginning of a line
',
    'line_nr' => 39,
    'text' => '@finalout should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @finalout should only appear at the beginning of a line
',
    'line_nr' => 41,
    'text' => '@finalout should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @finalout line: a word after finalout
',
    'line_nr' => 45,
    'text' => 'remaining argument on @finalout line: a word after finalout',
    'type' => 'warning'
  }
];


$result_nodes_list{'many_lines'} = '';

$result_sections_list{'many_lines'} = '';

$result_sectioning_root{'many_lines'} = '';

$result_headings_list{'many_lines'} = '';

1;
