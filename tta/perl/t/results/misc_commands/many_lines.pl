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
    *line_arg C5
     {spaces_before_argument: }
     {200mm,150mm following }
     *@@
     {pagesizes arg}
     {spaces_after_argument:\\n}
   {afourpaper }
   *@afourpaper C1 l2
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following afourpaper}
     {spaces_after_argument:\\n}
   {smallbook }
   *@smallbook C1 l3
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following smallbook}
     {spaces_after_argument:\\n}
   {headings }
   *@headings C1 l4
   |EXTRA
   |global_command_number:{1}
    *line_arg C3
     {spaces_before_argument: }
     {on line following headings}
     {spaces_after_argument:\\n}
   {oddfooting }
   *@oddfooting C1 l5
    *line_arg C3
     {spaces_before_argument: }
     {on line following oddfooting}
     {spaces_after_argument:\\n}
   {everyheading }
   *@everyheading C1 l6
    *line_arg C3
     {spaces_before_argument: }
     {on line following everyheading}
     {spaces_after_argument:\\n}
   {everyfooting }
   *@everyfooting C1 l7
    *line_arg C3
     {spaces_before_argument: }
     {on line following everyfooting}
     {spaces_after_argument:\\n}
   {evenheading }
   *@evenheading C1 l8
    *line_arg C3
     {spaces_before_argument: }
     {on line following evenheading}
     {spaces_after_argument:\\n}
   {evenfooting }
   *@evenfooting C1 l9
    *line_arg C3
     {spaces_before_argument: }
     {on line following evenfooting}
     {spaces_after_argument:\\n}
   {oddheading }
   *@oddheading C1 l10
    *line_arg C3
     {spaces_before_argument: }
     {on line following}
     {spaces_after_argument:\\n}
   {need }
  *@need C1 l11
   *line_arg C3
    {spaces_before_argument: }
    {0.1 on line following}
    {spaces_after_argument:\\n}
  *paragraph C1
   {need }
  *@need C1 l12
  |EXTRA
  |misc_args:A{0.1}
   *line_arg C3
    {spaces_before_argument: }
    {0.1}
    {spaces_after_argument:\\n}
  *paragraph C47
   {setchapternewpage }
   *@setchapternewpage C1 l13
    *line_arg C3
     {spaces_before_argument: }
     {on line following setchapternewpage}
     {spaces_after_argument:\\n}
   {raisesections }
   *@raisesections C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following raisesections}
     {spaces_after_argument:\\n}
   {lowersections }
   *@lowersections C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following lowersections}
     {spaces_after_argument:\\n}
   {kbdinputstyle code }
   *@kbdinputstyle C1 l16
   |EXTRA
   |global_command_number:{1}
    *line_arg C3
     {spaces_before_argument: }
     {code something}
     {spaces_after_argument:\\n}
   {afourpaper }
   *@afourpaper C1 l17
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following afourpaper}
     {spaces_after_argument:\\n}
   {afourlatex }
   *@afourlatex C1 l18
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following afourlatex}
     {spaces_after_argument:\\n}
   {afourwide }
   *@afourwide C1 l19
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:on line following afourwide}
     {spaces_after_argument:\\n}
   {paragraphindent asis }
   *@paragraphindent C1 l20
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{asis}
    *line_arg C3
     {spaces_before_argument: }
     {asis}
     {spaces_after_argument:\\n}
   {paragraphindent 0 }
   *@paragraphindent C1 l21
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{0}
    *line_arg C3
     {spaces_before_argument: }
     {0}
     {spaces_after_argument:\\n}
   {paragraphindent none }
   *@paragraphindent C1 l22
   |EXTRA
   |global_command_number:{3}
   |misc_args:A{none}
    *line_arg C3
     {spaces_before_argument: }
     {none}
     {spaces_after_argument:\\n}
   {paragraphindent 4 }
   *@paragraphindent C1 l23
   |EXTRA
   |global_command_number:{4}
   |misc_args:A{4}
    *line_arg C3
     {spaces_before_argument: }
     {4}
     {spaces_after_argument:\\n}
   {firstparagraphindent insert }
   *@firstparagraphindent C1 l24
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{insert}
    *line_arg C3
     {spaces_before_argument: }
     {insert}
     {spaces_after_argument:\\n}
   {firstparagraphindent 3 }
   *@firstparagraphindent C1 l25
   |EXTRA
   |global_command_number:{2}
    *line_arg C3
     {spaces_before_argument: }
     {3}
     {spaces_after_argument:\\n}
   {exampleindent 6 }
   *@exampleindent C1 l26
   |EXTRA
   |global_command_number:{1}
    *line_arg C3
     {spaces_before_argument: }
     {6 on line following exampleindent}
     {spaces_after_argument:\\n}
   {exampleindent 6 }
   *@exampleindent C1 l27
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{6}
    *line_arg C3
     {spaces_before_argument: }
     {6}
     {spaces_after_argument:\\n}
   {footnotestyle }
   *@footnotestyle C1 l28
   |EXTRA
   |misc_args:A{end}
    *line_arg C3
     {spaces_before_argument: }
     {end}
     {spaces_after_argument: \\n}
   {footnotestyle }
   *@footnotestyle C1 l29
   |EXTRA
   |misc_args:A{separate}
    *line_arg C3
     {spaces_before_argument: }
     {separate}
     {spaces_after_argument: \\n}
   {documentencoding }
   *@documentencoding C1 l30
   |EXTRA
   |global_command_number:{1}
   |text_arg:{US-ascii encoding name}
    *line_arg C3
     {spaces_before_argument: }
     {US-ascii encoding name}
     {spaces_after_argument:\\n}
   *@documentencoding C1 l31
   |EXTRA
   |global_command_number:{2}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C3
     {spaces_before_argument: }
     {ISO-8859-1}
     {spaces_after_argument:\\n}
   {frenchspacing }
   *@frenchspacing C1 l32
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{on}
    *line_arg C3
     {spaces_before_argument: }
     {on}
     {spaces_after_argument:\\n}
   {frenchspacing }
   *@frenchspacing C1 l33
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{off}
    *line_arg C3
     {spaces_before_argument: }
     {off}
     {spaces_after_argument:\\n}
   {fonttextsize }
   *@fonttextsize C1 l34
   |EXTRA
   |misc_args:A{10}
    *line_arg C3
     {spaces_before_argument: }
     {10}
     {spaces_after_argument:\\n}
   {everyheadingmarks }
   *@everyheadingmarks C1 l35
    *line_arg C3
     {spaces_before_argument: }
     {bottom on line following everyheadingmarks}
     {spaces_after_argument:\\n}
   *@allowcodebreaks C1 l36
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{false}
    *line_arg C3
     {spaces_before_argument: }
     {false}
     {spaces_after_argument:\\n}
   *@allowcodebreaks C1 l37
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{true}
    *line_arg C3
     {spaces_before_argument: }
     {true}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *paragraph C6
   {Text line followed by finalout on the same line and another below }
   *@finalout C1
    *line_arg C1
     {spaces_before_argument:\\n}
   *@finalout C1
    *line_arg C1
     {spaces_before_argument:\\n}
   {Text line after the finalout followed by a fianlout }
   *@finalout C1
    *line_arg C1
     {spaces_before_argument:\\n}
   {Text line after the text line followed by the finalout.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Test text after finalout\\n}
   *@finalout C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:a word after finalout}
     {spaces_after_argument:\\n}
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

$result_errors{'many_lines'} = '* W l1|@pagesizes should only appear at the beginning of a line
 warning: @pagesizes should only appear at the beginning of a line

* W l2|@afourpaper should only appear at the beginning of a line
 warning: @afourpaper should only appear at the beginning of a line

* W l2|remaining argument on @afourpaper line: on line following afourpaper
 warning: remaining argument on @afourpaper line: on line following afourpaper

* W l3|@smallbook should only appear at the beginning of a line
 warning: @smallbook should only appear at the beginning of a line

* W l3|remaining argument on @smallbook line: on line following smallbook
 warning: remaining argument on @smallbook line: on line following smallbook

* W l4|@headings should only appear at the beginning of a line
 warning: @headings should only appear at the beginning of a line

* E l4|bad argument to @headings: on line following headings
 bad argument to @headings: on line following headings

* W l5|@oddfooting should only appear at the beginning of a line
 warning: @oddfooting should only appear at the beginning of a line

* W l6|@everyheading should only appear at the beginning of a line
 warning: @everyheading should only appear at the beginning of a line

* W l7|@everyfooting should only appear at the beginning of a line
 warning: @everyfooting should only appear at the beginning of a line

* W l8|@evenheading should only appear at the beginning of a line
 warning: @evenheading should only appear at the beginning of a line

* W l9|@evenfooting should only appear at the beginning of a line
 warning: @evenfooting should only appear at the beginning of a line

* W l10|@oddheading should only appear at the beginning of a line
 warning: @oddheading should only appear at the beginning of a line

* W l11|@need should only appear at the beginning of a line
 warning: @need should only appear at the beginning of a line

* E l11|bad argument to @need: 0.1 on line following
 bad argument to @need: 0.1 on line following

* W l12|@need should only appear at the beginning of a line
 warning: @need should only appear at the beginning of a line

* W l13|@setchapternewpage should only appear at the beginning of a line
 warning: @setchapternewpage should only appear at the beginning of a line

* E l13|@setchapternewpage arg must be `on\', `off\' or `odd\', not `on line following setchapternewpage\'
 @setchapternewpage arg must be `on\', `off\' or `odd\', not `on line following setchapternewpage\'

* W l14|@raisesections should only appear at the beginning of a line
 warning: @raisesections should only appear at the beginning of a line

* W l14|remaining argument on @raisesections line: on line following raisesections
 warning: remaining argument on @raisesections line: on line following raisesections

* W l15|@lowersections should only appear at the beginning of a line
 warning: @lowersections should only appear at the beginning of a line

* W l15|remaining argument on @lowersections line: on line following lowersections
 warning: remaining argument on @lowersections line: on line following lowersections

* W l16|@kbdinputstyle should only appear at the beginning of a line
 warning: @kbdinputstyle should only appear at the beginning of a line

* E l16|@kbdinputstyle arg must be `code\'/`example\'/`distinct\', not `code something\'
 @kbdinputstyle arg must be `code\'/`example\'/`distinct\', not `code something\'

* W l17|@afourpaper should only appear at the beginning of a line
 warning: @afourpaper should only appear at the beginning of a line

* W l17|remaining argument on @afourpaper line: on line following afourpaper
 warning: remaining argument on @afourpaper line: on line following afourpaper

* W l17|multiple @afourpaper
 warning: multiple @afourpaper

* W l18|@afourlatex should only appear at the beginning of a line
 warning: @afourlatex should only appear at the beginning of a line

* W l18|remaining argument on @afourlatex line: on line following afourlatex
 warning: remaining argument on @afourlatex line: on line following afourlatex

* W l19|@afourwide should only appear at the beginning of a line
 warning: @afourwide should only appear at the beginning of a line

* W l19|remaining argument on @afourwide line: on line following afourwide
 warning: remaining argument on @afourwide line: on line following afourwide

* W l20|@paragraphindent should only appear at the beginning of a line
 warning: @paragraphindent should only appear at the beginning of a line

* W l21|@paragraphindent should only appear at the beginning of a line
 warning: @paragraphindent should only appear at the beginning of a line

* W l22|@paragraphindent should only appear at the beginning of a line
 warning: @paragraphindent should only appear at the beginning of a line

* W l23|@paragraphindent should only appear at the beginning of a line
 warning: @paragraphindent should only appear at the beginning of a line

* W l24|@firstparagraphindent should only appear at the beginning of a line
 warning: @firstparagraphindent should only appear at the beginning of a line

* W l25|@firstparagraphindent should only appear at the beginning of a line
 warning: @firstparagraphindent should only appear at the beginning of a line

* E l25|@firstparagraphindent arg must be `none\' or `insert\', not `3\'
 @firstparagraphindent arg must be `none\' or `insert\', not `3\'

* W l26|@exampleindent should only appear at the beginning of a line
 warning: @exampleindent should only appear at the beginning of a line

* E l26|@exampleindent arg must be numeric/`asis\', not `6 on line following exampleindent\'
 @exampleindent arg must be numeric/`asis\', not `6 on line following exampleindent\'

* W l27|@exampleindent should only appear at the beginning of a line
 warning: @exampleindent should only appear at the beginning of a line

* W l28|@footnotestyle should only appear at the beginning of a line
 warning: @footnotestyle should only appear at the beginning of a line

* W l29|@footnotestyle should only appear at the beginning of a line
 warning: @footnotestyle should only appear at the beginning of a line

* W l29|multiple @footnotestyle
 warning: multiple @footnotestyle

* W l30|@documentencoding should only appear at the beginning of a line
 warning: @documentencoding should only appear at the beginning of a line

* W l30|encoding `US-ascii encoding name\' is not a canonical texinfo encoding
 warning: encoding `US-ascii encoding name\' is not a canonical texinfo encoding

* W l30|unhandled encoding name `US-ascii encoding name\'
 warning: unhandled encoding name `US-ascii encoding name\'

* W l32|@frenchspacing should only appear at the beginning of a line
 warning: @frenchspacing should only appear at the beginning of a line

* W l33|@frenchspacing should only appear at the beginning of a line
 warning: @frenchspacing should only appear at the beginning of a line

* W l34|@fonttextsize should only appear at the beginning of a line
 warning: @fonttextsize should only appear at the beginning of a line

* W l35|@everyheadingmarks should only appear at the beginning of a line
 warning: @everyheadingmarks should only appear at the beginning of a line

* E l35|@everyheadingmarks arg must be `top\' or `bottom\', not `bottom on line following everyheadingmarks\'
 @everyheadingmarks arg must be `top\' or `bottom\', not `bottom on line following everyheadingmarks\'

* W l39|@finalout should only appear at the beginning of a line
 warning: @finalout should only appear at the beginning of a line

* W l41|@finalout should only appear at the beginning of a line
 warning: @finalout should only appear at the beginning of a line

* W l45|remaining argument on @finalout line: a word after finalout
 warning: remaining argument on @finalout line: a word after finalout

';

$result_nodes_list{'many_lines'} = '';

$result_sections_list{'many_lines'} = '';

$result_sectioning_root{'many_lines'} = '';

$result_headings_list{'many_lines'} = '';

1;
