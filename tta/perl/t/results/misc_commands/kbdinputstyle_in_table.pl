use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'kbdinputstyle_in_table'} = '*document_root C1
 *before_node_section C34
  *0 @macro C19 l1
  |EXTRA
  |macro_name:{codekbdmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: codekbdmacro\\n}
   {raw:@table @kbd\\n}
   {raw:@item i--tem out of example\\n}
   {raw:@end table\\n}
   {raw:\\n}
   {raw:@table @kbd{}\\n}
   {raw:@item braced i--tem out of example\\n}
   {raw:@end table\\n}
   {raw:\\n}
   {raw:in example\\n}
   {raw:@example\\n}
   {raw:@table @kbd\\n}
   {raw:@item i--tem in example\\n}
   {raw:@end table\\n}
   {raw:@table @kbd{}\\n}
   {raw:@item braced i--tem in example\\n}
   {raw:@end table\\n}
   {raw:@end example\\n}
   *@end C1 l19
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *paragraph C2
   *@@
   {kbdinputstyle code\\n}
  {empty_line:\\n}
  *@kbdinputstyle C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{code}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {code}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{codekbdmacro}
    >*brace_arg
  *1 @table C3 l25:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument_kbd_code:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *2 @kbd l25:@codekbdmacro
     |EXTRA
     |code:{1}
   *table_entry C1
    *table_term C1
     *@item C1 l25:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {i--tem out of example}
   *@end C1 l25:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *3 @table C3 l25:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument_kbd_code:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *4 @kbd C1 l25:@codekbdmacro
     |EXTRA
     |code:{1}
      *brace_container
   *table_entry C1
    *table_term C1
     *@item C1 l25:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {braced i--tem out of example}
   *@end C1 l25:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *paragraph C1
   {in example\\n}
  *5 @example C4 l25:@codekbdmacro
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *6 @table C3 l25:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |command_as_argument_kbd_code:{1}
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *7 @kbd l25:@codekbdmacro
      |EXTRA
      |code:{1}
    *table_entry C1
     *table_term C1
      *@item C1 l25:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {i--tem in example}
    *@end C1 l25:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *8 @table C3 l25:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |command_as_argument_kbd_code:{1}
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *9 @kbd C1 l25:@codekbdmacro
      |EXTRA
      |code:{1}
       *brace_container
    *table_entry C1
     *table_term C1
      *@item C1 l25:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {braced i--tem in example}
    *@end C1 l25:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *@end C1 l25:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
     >SOURCEMARKS
     >macro_expansion<end;1><p:7>
  {empty_line:\\n}
  *paragraph C2
   *@@
   {kbdinputstyle example\\n}
  {empty_line:\\n}
  *@kbdinputstyle C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{example}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {example}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;2><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{codekbdmacro}
    >*brace_arg
  *10 @table C3 l31:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument_kbd_code:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *11 @kbd l31:@codekbdmacro
     |EXTRA
     |code:{1}
   *table_entry C1
    *table_term C1
     *@item C1 l31:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {i--tem out of example}
   *@end C1 l31:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *12 @table C3 l31:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument_kbd_code:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *13 @kbd C1 l31:@codekbdmacro
     |EXTRA
     |code:{1}
      *brace_container
   *table_entry C1
    *table_term C1
     *@item C1 l31:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {braced i--tem out of example}
   *@end C1 l31:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *paragraph C1
   {in example\\n}
  *14 @example C4 l31:@codekbdmacro
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *15 @table C3 l31:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *16 @kbd l31:@codekbdmacro
    *table_entry C1
     *table_term C1
      *@item C1 l31:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {i--tem in example}
    *@end C1 l31:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *17 @table C3 l31:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *18 @kbd C1 l31:@codekbdmacro
       *brace_container
    *table_entry C1
     *table_term C1
      *@item C1 l31:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {braced i--tem in example}
    *@end C1 l31:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *@end C1 l31:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
     >SOURCEMARKS
     >macro_expansion<end;2><p:7>
  {empty_line:\\n}
  *paragraph C2
   *@@
   {kbdinputstyle distinct\\n}
  {empty_line:\\n}
  *@kbdinputstyle C1 l35
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{distinct}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {distinct}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;3><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{codekbdmacro}
    >*brace_arg
  *19 @table C3 l37:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *20 @kbd l37:@codekbdmacro
   *table_entry C1
    *table_term C1
     *@item C1 l37:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {i--tem out of example}
   *@end C1 l37:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *21 @table C3 l37:@codekbdmacro
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *22 @kbd C1 l37:@codekbdmacro
      *brace_container
   *table_entry C1
    *table_term C1
     *@item C1 l37:@codekbdmacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {braced i--tem out of example}
   *@end C1 l37:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *paragraph C1
   {in example\\n}
  *23 @example C4 l37:@codekbdmacro
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *24 @table C3 l37:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *25 @kbd l37:@codekbdmacro
    *table_entry C1
     *table_term C1
      *@item C1 l37:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {i--tem in example}
    *@end C1 l37:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *26 @table C3 l37:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *27 @kbd C1 l37:@codekbdmacro
       *brace_container
    *table_entry C1
     *table_term C1
      *@item C1 l37:@codekbdmacro
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {braced i--tem in example}
    *@end C1 l37:@codekbdmacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {table}
   *@end C1 l37:@codekbdmacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
     >SOURCEMARKS
     >macro_expansion<end;3><p:7>
';


$result_texis{'kbdinputstyle_in_table'} = '@macro codekbdmacro
@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example
@end macro

@@kbdinputstyle code

@kbdinputstyle code

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example

@@kbdinputstyle example

@kbdinputstyle example

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example

@@kbdinputstyle distinct

@kbdinputstyle distinct

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example
';


$result_texts{'kbdinputstyle_in_table'} = '
@kbdinputstyle code


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example

@kbdinputstyle example


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example

@kbdinputstyle distinct


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example
';

$result_errors{'kbdinputstyle_in_table'} = [];



$result_converted{'plaintext'}->{'kbdinputstyle_in_table'} = '@kbdinputstyle code

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’

   @kbdinputstyle example

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’

   @kbdinputstyle distinct

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’
';


$result_converted{'html_text'}->{'kbdinputstyle_in_table'} = '
<p>@kbdinputstyle code
</p>

<dl class="table">
<dt><code class="code as-code-kbd">i--tem out of example</code></dt>
</dl>

<dl class="table">
<dt><code class="code as-code-kbd">braced i--tem out of example</code></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><code class="code as-code-kbd">i--tem in example</code></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><code class="code as-code-kbd">braced i--tem in example</code></code></dt>
</dl>
</div>

<p>@kbdinputstyle example
</p>

<dl class="table">
<dt><code class="code as-code-kbd">i--tem out of example</code></dt>
</dl>

<dl class="table">
<dt><code class="code as-code-kbd">braced i--tem out of example</code></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">i--tem in example</kbd></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">braced i--tem in example</kbd></code></dt>
</dl>
</div>

<p>@kbdinputstyle distinct
</p>

<dl class="table">
<dt><kbd class="kbd">i--tem out of example</kbd></dt>
</dl>

<dl class="table">
<dt><kbd class="kbd">braced i--tem out of example</kbd></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">i--tem in example</kbd></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">braced i--tem in example</kbd></code></dt>
</dl>
</div>
';


$result_converted{'latex'}->{'kbdinputstyle_in_table'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{enumitem}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% style command for kbd in \'cmd_text\' formatting context
\\newcommand\\Texinfocommandstyletextkbd[1]{{\\ttfamily\\textsl{#1}}}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}

% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}

% used for substitutions in commands
\\newcommand{\\Texinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% allow line breaking at underscore
\\let\\Texinfounderscore\\_
\\renewcommand{\\_}{\\Texinfounderscore\\discretionary{}{}{}}
\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%


@kbdinputstyle code


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}

@kbdinputstyle example


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}

@kbdinputstyle distinct


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}
\\end{document}
';

1;
