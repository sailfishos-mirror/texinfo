use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'bib_example'} = '*document_root C9
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\input texinfo   @c -*-texinfo-*-\\n}
  *preamble_before_content C218
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Copyright (C) 2004  Aaron S. Hawley}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Keywords: docs, texinfo, extensions, bib}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% This file is free software; you can redistribute it and/or modify}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% it under the terms of the GNU General Public License as published by}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% the Free Software Foundation; either version 2, or (at your option)}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% any later version.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% This file is distributed in the hope that it will be useful,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% but WITHOUT ANY WARRANTY; without even the implied warranty of}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% GNU General Public License for more details.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% You should have received a copy of the GNU General Public License}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% along with texi2html; see the file COPYING.  If not, write to}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% the Free Software Foundation, Inc., 59 Temple Place - Suite 330,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Boston, MA 02111-1307, USA.}
   {empty_line:\\n}
   *@comment C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%**start of header}
   *@settitle C1 bib-example.texi:l23
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {Texinfo with a Bibliography and References}
   {empty_line:\\n}
   >SOURCEMARKS
   >include<start;1><p:1>
    >*@include C1 bib-example.texi:l25
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
    >|EXTRA
    >|text_arg:{my-bib-macros.texi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{my-bib-macros.texi}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {\\input texinfo   @c -*-texinfo-*-}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% my-bib-macros.texi --- Texinfo macros providing a crude}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% bibliography and citation capability.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Copyright (C) 2004  Aaron S. Hawley}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Keywords: docs, texinfo, extensions, bib}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% This file is free software; you can redistribute it and/or modify}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% it under the terms of the GNU General Public License as published by}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% the Free Software Foundation; either version 2, or (at your option)}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% any later version.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% This file is distributed in the hope that it will be useful,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% but WITHOUT ANY WARRANTY; without even the implied warranty of}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% GNU General Public License for more details.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% You should have received a copy of the GNU General Public License}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% along with texi2html; see the file COPYING.  If not, write to}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% the Free Software Foundation, Inc., 59 Temple Place - Suite 330,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Boston, MA 02111-1307, USA.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Commentary:}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%% Introduction}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Creates references to a ``Bibliography\'\' or ``References\'\'}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% section of a Texinfo document, using Texinfo\'s}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% macro system.  Although not as terse a way to cite systems as is}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% found in document systems like TeX, the format is simpler and}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% the rendering  is easier for non-academic readers.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%% Usage}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% References to cited works can be put in any section of a document.}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% The cited works must be put in either a Texinfo table (for}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% instance with ``@table @asis ... @end table\'\') or within a}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Texinfo list (something like ``@enumerate ... @end enumerate\'\'}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% or ``@itemize @bullet ... @end itemize\'\').  They are created}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% with the command ``@mybibitem{REF-NAME}\'\'.  To cite a reference}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% with a @mybibitem use ``@mybibcite{REF-NAME}\'\'.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% The beginning of a document must include (using the @include}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% command) the file my-bib-macros.texi, which should be made}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% available in the current directory of the parent file.  A single}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% call should be made to choose to use a list or a table.  The}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% command to chose is called @mybibuselist{NODE}, where NODE is}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% the node containing the location where the references are listed.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%% Example}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% \\input texinfo   @c -*-texinfo-*-}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @comment %**start of header}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @setfilename my-file-with-bib.info}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @settitle Texinfo with a Bibliography and References}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @include my-bib-macros.texi}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibuselist{References}}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @comment %**end of header}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @node Top}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @top Top}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @menu}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% * Introduction::}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% * @mybibnode{}::}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @end menu}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @node Introduction}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @chapter Introduction}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% The ability of a documentation format to make cross references to a}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% bibliography, a feature of LaTeX @mybibcite{LaTeX2e}, isn\'t}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% currently supported in Texinfo.}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @node @mybibnode{}}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @chapter References}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @itemize @asis}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibitem{LaTeX2e} Leslie Lamport, LaTeX User\'s Guide and}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Reference Manual, 2nd edition, Addison-Wesley, Reading,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Massachusetts, 1994.}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @end itemize}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @bye}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% This example produces (in Info):}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       1 Introduction}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       **************}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       The ability of a documentation format to make cross}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       references to a bibliography, a feature of LaTeX (See item}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       [LaTeX2e] in *Note LaTeX2e: References.), is not currently}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       supported in Texinfo.}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       2 References}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       ************}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       Manual, 2nd edition, Addison-Wesley, Reading,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       Massachusetts, 1994.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% and (in printed output):}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       1 Introduction}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       **************}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       The ability of a documentation format to make cross}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       references to a bibliography, a feature of LaTeX (See item}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       [LaTeX2e] in Chapter 2 [References], page 3.), is not}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       currently supported in Texinfo.}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       2 References}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       ************}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       Manual, 2nd edition, Addison-Wesley, Reading,}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%       Massachusetts, 1994.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%%% Notes}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% The pointers to references will be functional in hypertext}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% documentation (info, HTML, XML and others) and properly rendered}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% in print documents, because they are implemented with Texinfo\'s}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% cross referencing capabilities (using @anchor and @ref).  Failures}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% by an author to make proper references with ``my-bib-macros\'\' in}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% their document will give cross referencing errors by Texinfo}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% conversion tools.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Only one ``Reference\'\' section is allowed per document.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% An improvement of this system would create cross references}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% (with @xref) at each cited work to all the originating cross}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% refererences.}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% Code:}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {% Configuration Options}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibsetrefnode : Defines the name of the node to contain}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% references.}
   {empty_line:\\n}
   *@macro C3 my-bib-macros.texi:l162
   |EXTRA
   |macro_name:{mybibsetrefnode}
   |misc_args:A{node}
    *arguments_line C1
     {macro_line: mybibsetrefnode{node}\\n}
    {raw:@set mybibrefnode \\node\\\\n}
    *@end C1 my-bib-macros.texi:l164
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibnode{} : Macro to be placed at node containing references}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% and calls to @mybibcite{}}
   {empty_line:\\n}
   *@macro C3 my-bib-macros.texi:l169
   |EXTRA
   |macro_name:{mybibnode}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: mybibnode{}\\n}
    {raw:@value{mybibrefnode}\\n}
    *@end C1 my-bib-macros.texi:l171
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibusetable : Whether each @mybibitem will be put in a}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% table.}
   {empty_line:\\n}
   *@macro C7 my-bib-macros.texi:l176
   |EXTRA
   |macro_name:{mybibusetable}
   |misc_args:A{node}
    *arguments_line C1
     {macro_line: mybibusetable{node}\\n}
    {raw:@set mybibtable true\\n}
    {raw:@ifset mybiblist\\n}
    {raw:@clear mybiblist\\n}
    {raw:@end ifset\\n}
    {raw:@mybibsetrefnode{\\node\\}\\n}
    *@end C1 my-bib-macros.texi:l182
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibuselist : Whether each @mybibitem will be put in a}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% list.}
   {empty_line:\\n}
   *@macro C7 my-bib-macros.texi:l187
   |EXTRA
   |macro_name:{mybibuselist}
   |misc_args:A{node}
    *arguments_line C1
     {macro_line: mybibuselist{node}\\n}
    {raw:@set mybiblist true\\n}
    {raw:@ifset mybibtable\\n}
    {raw:@clear mybibtable\\n}
    {raw:@end ifset\\n}
    {raw:@mybibsetrefnode{\\node\\}\\n}
    *@end C1 my-bib-macros.texi:l193
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibcite{REF} : Cites the cross reference REF.}
   {empty_line:\\n}
   *@macro C10 my-bib-macros.texi:l198
   |EXTRA
   |macro_name:{mybibcite}
   |misc_args:A{ref}
    *arguments_line C1
     {macro_line: mybibcite{ref}\\n}
    {raw:@ifclear mybibrefnode\\n}
    {raw:@mybibmakeref{mybibsetrefnode was not used, \\ref\\}\\n}
    {raw:@end ifclear\\n}
    {raw:@c %**else if\\n}
    {raw:@ifset mybibrefnode\\n}
    {raw:@mybibmakeref{@mybibnode{}, \\ref\\}\\n}
    {raw:@end ifset\\n}
    {raw:\\n}
    *@end C1 my-bib-macros.texi:l207
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@macro C3 my-bib-macros.texi:l209
   |EXTRA
   |macro_name:{mybibmakeref}
   |misc_args:A{node|ref}
    *arguments_line C1
     {macro_line: mybibmakeref{node, ref}\\n}
    {raw:(See item [\\ref\\] in @ref{\\node\\, \\ref\\}.)\\n}
    *@end C1 my-bib-macros.texi:l211
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% @mybibcite{REF} : Creates a cross referenced citation REF.}
   {empty_line:\\n}
   *@macro C16 my-bib-macros.texi:l215
   |EXTRA
   |macro_name:{mybibitem}
   |misc_args:A{ref}
    *arguments_line C1
     {macro_line: mybibitem{ref}\\n}
    {raw:@ifclear mybiblist\\n}
    {raw:@ifclear mybibtable\\n}
    {raw:@set mybiblist true\\n}
    {raw:@end ifclear\\n}
    {raw:@end ifclear\\n}
    {raw:@ifset mybiblist\\n}
    {raw:@item\\n}
    {raw:@anchor{\\ref\\}[\\ref\\]\\n}
    {raw:@end ifset\\n}
    {raw:@c %**else if\\n}
    {raw:@ifset mybibtable\\n}
    {raw:@item @anchor{\\ref\\}[\\ref\\]\\n}
    {raw:@end ifset\\n}
    {raw:\\n}
    *@end C1 my-bib-macros.texi:l230
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {macro}
   {empty_line:\\n}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   >SOURCEMARKS
   >include<end;1>
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{mybibuselist}
     >*brace_arg C1
      >{macro_call_arg_text:References}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%% my-bib-macros.texi ends here}
   *@set C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{mybiblist|true}
   >SOURCEMARKS
   >ignored_conditional_block<1>
    >*@ifset C3 bib-example.texi:l26:@mybibuselist
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{spaces_after_argument:\\n}
       >{mybibtable}
     >{raw:@clear mybibtable\\n}
     >*@end C1 bib-example.texi:l26:@mybibuselist
     >|INFO
     >|spaces_before_argument:
      >|{spaces_before_argument: }
     >|EXTRA
     >|text_arg:{ifset}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{spaces_after_argument:\\n}
       >{ifset}
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{mybibsetrefnode}
     >*brace_arg C1
      >{macro_call_arg_text:References}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {mybiblist true}
   *@set C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{mybibrefnode|References}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {mybibrefnode References}
     >SOURCEMARKS
     >macro_expansion<end;2><p:23>
     >macro_expansion<end;1><p:23>
   {empty_line:\\n}
   *@comment C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%**end of header}
   {empty_line:\\n}
 *@node C1 bib-example.texi:l30 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C4 bib-example.texi:l31 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
  {empty_line:\\n}
  *@menu C5 bib-example.texi:l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 bib-example.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Introduction}
    |normalized:{Introduction}
     {Introduction}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 bib-example.texi:l35
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{References}
    |normalized:{References}
     {References}
     >SOURCEMARKS
     >macro_expansion<start;3>
      >*macro_call C1
      >|INFO
      >|command_name:{mybibnode}
       >*brace_arg
     >value_expansion<start;1>{References}
      >*@value C1
       >*brace_container C1
        >{mybibrefnode}
     >value_expansion<end;1><p:10>
     >macro_expansion<end;3><p:10>
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *@end C1 bib-example.texi:l37
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C1 bib-example.texi:l39 {Introduction}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{Introduction}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Introduction}
 *@chapter C4 bib-example.texi:l40 {Introduction}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Introduction}
  {empty_line:\\n}
  *paragraph C8
   {The ability of a documentation format to make cross references to a\\n}
   {bibliography, a feature of LaTeX }
   >SOURCEMARKS
   >macro_expansion<start;4><p:33>
    >*macro_call C1
    >|INFO
    >|command_name:{mybibcite}
     >*brace_arg C1
      >{macro_call_arg_text:LaTeX2e}
   >ignored_conditional_block<2><p:33>
    >*@ifclear C3 bib-example.texi:l43:@mybibcite
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{spaces_after_argument:\\n}
       >{mybibrefnode}
     >{raw:@mybibmakeref{mybibsetrefnode was not used, LaTeX2e}\\n}
     >*@end C1 bib-example.texi:l43:@mybibcite
     >|INFO
     >|spaces_before_argument:
      >|{spaces_before_argument: }
     >|EXTRA
     >|text_arg:{ifclear}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{spaces_after_argument:\\n}
       >{ifclear}
   *@c C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   >SOURCEMARKS
   >expanded_conditional_command<start;1>
    >*@ifset C1 bib-example.texi:l43:@mybibcite
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{spaces_after_argument:\\n}
       >{mybibrefnode}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {%**else if}
   {(See item [LaTeX2e] in }
   >SOURCEMARKS
   >macro_expansion<start;5>
    >*macro_call C2
    >|INFO
    >|command_name:{mybibmakeref}
     >*brace_arg C1
      >{macro_call_arg_text:@mybibnode{}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{spaces_before_argument: }
      >{macro_call_arg_text:LaTeX2e}
   *@ref C2 bib-example.texi:l43:@mybibmakeref
    *brace_arg C1
    |EXTRA
    |node_content:{References}
    |normalized:{References}
     {References}
     >SOURCEMARKS
     >macro_expansion<start;6>
      >*macro_call C1
      >|INFO
      >|command_name:{mybibnode}
       >*brace_arg
     >value_expansion<start;2>{References}
      >*@value C1
       >*brace_container C1
        >{mybibrefnode}
     >value_expansion<end;2><p:10>
     >macro_expansion<end;6><p:10>
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {LaTeX2e}
   {.)\\n}
   >SOURCEMARKS
   >macro_expansion<end;5><p:2>
   >expanded_conditional_command<end;1><p:3>
    >*@end C1 bib-example.texi:l43:@mybibcite
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{ifset}
   >macro_expansion<end;4><p:3>
   {, isn\'t\\n}
   {currently supported in Texinfo.\\n}
  {empty_line:\\n}
 *@node C1 bib-example.texi:l46 {References}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
  |>SOURCEMARKS
  |>macro_expansion<start;7><p:1>
   |>*macro_call C1
   |>|INFO
   |>|command_name:{mybibnode}
    |>*brace_arg
  |>value_expansion<start;3><p:1>{References}
   |>*@value C1
    |>*brace_container C1
     |>{mybibrefnode}
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{References}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {References}
    >SOURCEMARKS
    >value_expansion<end;3><p:10>
    >macro_expansion<end;7><p:10>
 *@chapter C4 bib-example.texi:l47 {References}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {References}
  {empty_line:\\n}
  *@itemize C4 bib-example.texi:l49
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@w C1 bib-example.texi:l49
      *brace_container
   *before_item C1
    {empty_line:\\n}
    >SOURCEMARKS
    >macro_expansion<start;8><p:1>
     >*macro_call C1
     >|INFO
     >|command_name:{mybibitem}
      >*brace_arg C1
       >{macro_call_arg_text:LaTeX2e}
    >ignored_conditional_block<3><p:1>
     >*@ifclear C5 bib-example.texi:l51:@mybibitem
     >|INFO
     >|spaces_before_argument:
      >|{spaces_before_argument: }
      >*arguments_line C1
       >*block_line_arg C1
       >|INFO
       >|spaces_after_argument:
        >|{spaces_after_argument:\\n}
        >{mybiblist}
      >{raw:@ifclear mybibtable\\n}
      >{raw:@set mybiblist true\\n}
      >{raw:@end ifclear\\n}
      >*@end C1 bib-example.texi:l51:@mybibitem
      >|INFO
      >|spaces_before_argument:
       >|{spaces_before_argument: }
      >|EXTRA
      >|text_arg:{ifclear}
       >*line_arg C1
       >|INFO
       >|spaces_after_argument:
        >|{spaces_after_argument:\\n}
        >{ifclear}
    >expanded_conditional_command<start;2><p:1>
     >*@ifset C1 bib-example.texi:l51:@mybibitem
     >|INFO
     >|spaces_before_argument:
      >|{spaces_before_argument: }
      >*arguments_line C1
       >*block_line_arg C1
       >|INFO
       >|spaces_after_argument:
        >|{spaces_after_argument:\\n}
        >{mybiblist}
   *@item C4 bib-example.texi:l51:@mybibitem
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command:\\n}
    *@anchor C1 bib-example.texi:l51:@mybibitem
    |EXTRA
    |is_target:{1}
    |normalized:{LaTeX2e}
     *brace_arg C1
      {LaTeX2e}
    *paragraph C5
     {[LaTeX2e]\\n}
     >SOURCEMARKS
     >expanded_conditional_command<end;2><p:10>
      >*@end C1 bib-example.texi:l51:@mybibitem
      >|INFO
      >|spaces_before_argument:
       >|{spaces_before_argument: }
      >|EXTRA
      >|text_arg:{ifset}
       >*line_arg C1
       >|INFO
       >|spaces_after_argument:
        >|{spaces_after_argument:\\n}
        >{ifset}
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     >SOURCEMARKS
     >ignored_conditional_block<4>
      >*@ifset C3 bib-example.texi:l51:@mybibitem
      >|INFO
      >|spaces_before_argument:
       >|{spaces_before_argument: }
       >*arguments_line C1
        >*block_line_arg C1
        >|INFO
        >|spaces_after_argument:
         >|{spaces_after_argument:\\n}
         >{mybibtable}
       >{raw:@item @anchor{LaTeX2e}[LaTeX2e]\\n}
       >*@end C1 bib-example.texi:l51:@mybibitem
       >|INFO
       >|spaces_before_argument:
        >|{spaces_before_argument: }
       >|EXTRA
       >|text_arg:{ifset}
        >*line_arg C1
        >|INFO
        >|spaces_after_argument:
         >|{spaces_after_argument:\\n}
         >{ifset}
     >macro_expansion<end;8>
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {%**else if}
     { Leslie Lamport, LaTeX User\'s Guide and\\n}
     {Reference Manual, 2nd edition, Addison-Wesley, Reading,\\n}
     {Massachusetts, 1994.\\n}
    {empty_line:\\n}
   *@end C1 bib-example.texi:l55
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {itemize}
  {empty_line:\\n}
 *@bye C1
  *line_arg
  |INFO
  |spaces_after_argument:
   |{spaces_after_argument:\\n}
 *postamble_after_end C1
  {text_after_end:\\n}
';


$result_texis{'bib_example'} = '\\input texinfo   @c -*-texinfo-*-
@c % Copyright (C) 2004  Aaron S. Hawley

@c % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
@c % Keywords: docs, texinfo, extensions, bib

@c % This file is free software; you can redistribute it and/or modify
@c % it under the terms of the GNU General Public License as published by
@c % the Free Software Foundation; either version 2, or (at your option)
@c % any later version.

@c % This file is distributed in the hope that it will be useful,
@c % but WITHOUT ANY WARRANTY; without even the implied warranty of
@c % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
@c % GNU General Public License for more details.

@c % You should have received a copy of the GNU General Public License
@c % along with texi2html; see the file COPYING.  If not, write to
@c % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
@c % Boston, MA 02111-1307, USA.

@comment %**start of header
@settitle Texinfo with a Bibliography and References

@c \\input texinfo   @c -*-texinfo-*-
@c %% my-bib-macros.texi --- Texinfo macros providing a crude
@c %% bibliography and citation capability.

@c % Copyright (C) 2004  Aaron S. Hawley

@c % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
@c % Keywords: docs, texinfo, extensions, bib

@c % This file is free software; you can redistribute it and/or modify
@c % it under the terms of the GNU General Public License as published by
@c % the Free Software Foundation; either version 2, or (at your option)
@c % any later version.

@c % This file is distributed in the hope that it will be useful,
@c % but WITHOUT ANY WARRANTY; without even the implied warranty of
@c % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
@c % GNU General Public License for more details.

@c % You should have received a copy of the GNU General Public License
@c % along with texi2html; see the file COPYING.  If not, write to
@c % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
@c % Boston, MA 02111-1307, USA.

@c %% Commentary:

@c %%% Introduction

@c %% Creates references to a ``Bibliography\'\' or ``References\'\'
@c %% section of a Texinfo document, using Texinfo\'s
@c %% macro system.  Although not as terse a way to cite systems as is
@c %% found in document systems like TeX, the format is simpler and
@c %% the rendering  is easier for non-academic readers.

@c %

@c %%% Usage

@c %% References to cited works can be put in any section of a document.
@c %% The cited works must be put in either a Texinfo table (for
@c %% instance with ``@table @asis ... @end table\'\') or within a
@c %% Texinfo list (something like ``@enumerate ... @end enumerate\'\'
@c %% or ``@itemize @bullet ... @end itemize\'\').  They are created
@c %% with the command ``@mybibitem{REF-NAME}\'\'.  To cite a reference
@c %% with a @mybibitem use ``@mybibcite{REF-NAME}\'\'.

@c %% The beginning of a document must include (using the @include
@c %% command) the file my-bib-macros.texi, which should be made
@c %% available in the current directory of the parent file.  A single
@c %% call should be made to choose to use a list or a table.  The
@c %% command to chose is called @mybibuselist{NODE}, where NODE is
@c %% the node containing the location where the references are listed.

@c %

@c %%% Example

@c %% \\input texinfo   @c -*-texinfo-*-
@c %% @comment %**start of header
@c %% @setfilename my-file-with-bib.info
@c %% @settitle Texinfo with a Bibliography and References
@c %%
@c %% @include my-bib-macros.texi
@c %% @mybibuselist{References}
@c %%
@c %% @comment %**end of header
@c %%
@c %% @node Top
@c %% @top Top
@c %%
@c %% @menu
@c %% * Introduction::
@c %% * @mybibnode{}::
@c %%
@c %% @end menu
@c %%
@c %% @node Introduction
@c %% @chapter Introduction
@c %%
@c %% The ability of a documentation format to make cross references to a
@c %% bibliography, a feature of LaTeX @mybibcite{LaTeX2e}, isn\'t
@c %% currently supported in Texinfo.
@c %%
@c %% @node @mybibnode{}
@c %% @chapter References
@c %%
@c %% @itemize @asis
@c %%
@c %% @mybibitem{LaTeX2e} Leslie Lamport, LaTeX User\'s Guide and
@c %% Reference Manual, 2nd edition, Addison-Wesley, Reading,
@c %% Massachusetts, 1994.
@c %%
@c %% @end itemize
@c %%
@c %% @bye

@c %%

@c %% This example produces (in Info):

@c %%       1 Introduction
@c %%       **************
@c %%
@c %%       The ability of a documentation format to make cross
@c %%       references to a bibliography, a feature of LaTeX (See item
@c %%       [LaTeX2e] in *Note LaTeX2e: References.), is not currently
@c %%       supported in Texinfo.
@c %%
@c %%
@c %%       2 References
@c %%       ************
@c %%
@c %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
@c %%       Manual, 2nd edition, Addison-Wesley, Reading,
@c %%       Massachusetts, 1994.

@c %% and (in printed output):

@c %%       1 Introduction
@c %%       **************
@c %%
@c %%       The ability of a documentation format to make cross
@c %%       references to a bibliography, a feature of LaTeX (See item
@c %%       [LaTeX2e] in Chapter 2 [References], page 3.), is not
@c %%       currently supported in Texinfo.
@c %%
@c %%
@c %%       2 References
@c %%       ************
@c %%
@c %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
@c %%       Manual, 2nd edition, Addison-Wesley, Reading,
@c %%       Massachusetts, 1994.

@c %

@c %%% Notes

@c %% The pointers to references will be functional in hypertext
@c %% documentation (info, HTML, XML and others) and properly rendered
@c %% in print documents, because they are implemented with Texinfo\'s
@c %% cross referencing capabilities (using @anchor and @ref).  Failures
@c %% by an author to make proper references with ``my-bib-macros\'\' in
@c %% their document will give cross referencing errors by Texinfo
@c %% conversion tools.

@c %% Only one ``Reference\'\' section is allowed per document.

@c %% An improvement of this system would create cross references
@c %% (with @xref) at each cited work to all the originating cross
@c %% refererences.

@c %

@c %% Code:

@c % Configuration Options

@c %% @mybibsetrefnode : Defines the name of the node to contain
@c %% references.

@macro mybibsetrefnode{node}
@set mybibrefnode \\node\\
@end macro

@c %% @mybibnode{} : Macro to be placed at node containing references
@c %% and calls to @mybibcite{}

@macro mybibnode{}
@value{mybibrefnode}
@end macro

@c %% @mybibusetable : Whether each @mybibitem will be put in a
@c %% table.

@macro mybibusetable{node}
@set mybibtable true
@ifset mybiblist
@clear mybiblist
@end ifset
@mybibsetrefnode{\\node\\}
@end macro

@c %% @mybibuselist : Whether each @mybibitem will be put in a
@c %% list.

@macro mybibuselist{node}
@set mybiblist true
@ifset mybibtable
@clear mybibtable
@end ifset
@mybibsetrefnode{\\node\\}
@end macro


@c %% @mybibcite{REF} : Cites the cross reference REF.

@macro mybibcite{ref}
@ifclear mybibrefnode
@mybibmakeref{mybibsetrefnode was not used, \\ref\\}
@end ifclear
@c %**else if
@ifset mybibrefnode
@mybibmakeref{@mybibnode{}, \\ref\\}
@end ifset

@end macro

@macro mybibmakeref{node, ref}
(See item [\\ref\\] in @ref{\\node\\, \\ref\\}.)
@end macro

@c %% @mybibcite{REF} : Creates a cross referenced citation REF.

@macro mybibitem{ref}
@ifclear mybiblist
@ifclear mybibtable
@set mybiblist true
@end ifclear
@end ifclear
@ifset mybiblist
@item
@anchor{\\ref\\}[\\ref\\]
@end ifset
@c %**else if
@ifset mybibtable
@item @anchor{\\ref\\}[\\ref\\]
@end ifset

@end macro

@c %% my-bib-macros.texi ends here
@set mybiblist true
@set mybibrefnode References

@comment %**end of header

@node Top
@top Top

@menu
* Introduction::
* References::

@end menu

@node Introduction
@chapter Introduction

The ability of a documentation format to make cross references to a
bibliography, a feature of LaTeX @c %**else if
(See item [LaTeX2e] in @ref{References, LaTeX2e}.)
, isn\'t
currently supported in Texinfo.

@node References
@chapter References

@itemize @w{}

@item
@anchor{LaTeX2e}[LaTeX2e]
@c %**else if
 Leslie Lamport, LaTeX User\'s Guide and
Reference Manual, 2nd edition, Addison-Wesley, Reading,
Massachusetts, 1994.

@end itemize

@bye

';


$result_texts{'bib_example'} = '


















































Top
***

* Introduction::
* References::


1 Introduction
**************

The ability of a documentation format to make cross references to a
bibliography, a feature of LaTeX (See item [LaTeX2e] in References.)
, isn\'t
currently supported in Texinfo.

2 References
************


[LaTeX2e]
 Leslie Lamport, LaTeX User\'s Guide and
Reference Manual, 2nd edition, Addison-Wesley, Reading,
Massachusetts, 1994.


';

$result_errors{'bib_example'} = [
  {
    'error_line' => 'warning: @ifclear should only appear at the beginning of a line (possibly involving @mybibcite)
',
    'file_name' => 'bib-example.texi',
    'line_nr' => 43,
    'macro' => 'mybibcite',
    'text' => '@ifclear should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_nodes_list{'bib_example'} = '1|Top
 associated_section: Top
 associated_title_command: Top
 menus:
  Introduction
  References
 node_directions:
  next->Introduction
2|Introduction
 associated_section: 1 Introduction
 associated_title_command: 1 Introduction
 menu_directions:
  next->References
  up->Top
 node_directions:
  next->References
  prev->Top
  up->Top
3|References
 associated_section: 2 References
 associated_title_command: 2 References
 menu_directions:
  prev->Introduction
  up->Top
 node_directions:
  prev->Introduction
  up->Top
';

$result_sections_list{'bib_example'} = '1|Top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Introduction
 section_children:
  1|Introduction
  2|References
2|Introduction
 associated_anchor_command: Introduction
 associated_node: Introduction
 section_directions:
  next->References
  up->Top
 toplevel_directions:
  next->References
  prev->Top
  up->Top
3|References
 associated_anchor_command: References
 associated_node: References
 section_directions:
  prev->Introduction
  up->Top
 toplevel_directions:
  prev->Introduction
  up->Top
';

$result_sectioning_root{'bib_example'} = 'level: -1
list:
 1|Top
';

$result_headings_list{'bib_example'} = '';

1;
