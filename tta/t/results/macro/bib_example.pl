use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bib_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo   @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Copyright (C) 2004  Aaron S. Hawley
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Keywords: docs, texinfo, extensions, bib
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % This file is free software; you can redistribute it and/or modify
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % it under the terms of the GNU General Public License as published by
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % the Free Software Foundation; either version 2, or (at your option)
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % any later version.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % This file is distributed in the hope that it will be useful,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % GNU General Public License for more details.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % You should have received a copy of the GNU General Public License
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % along with texi2html; see the file COPYING.  If not, write to
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Boston, MA 02111-1307, USA.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'comment',
              'contents' => [
                {
                  'text' => ' %**start of header
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'settitle',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Texinfo with a Bibliography and References'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 23
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'include',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'my-bib-macros.texi'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'extra' => {
                      'text_arg' => 'my-bib-macros.texi'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'bib-example.texi',
                      'line_nr' => 25
                    }
                  },
                  'position' => 1,
                  'sourcemark_type' => 'include',
                  'status' => 'start'
                }
              ],
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' \\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% my-bib-macros.texi --- Texinfo macros providing a crude
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% bibliography and citation capability.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Copyright (C) 2004  Aaron S. Hawley
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Keywords: docs, texinfo, extensions, bib
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % This file is free software; you can redistribute it and/or modify
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % it under the terms of the GNU General Public License as published by
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % the Free Software Foundation; either version 2, or (at your option)
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % any later version.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % This file is distributed in the hope that it will be useful,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % GNU General Public License for more details.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % You should have received a copy of the GNU General Public License
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % along with texi2html; see the file COPYING.  If not, write to
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Boston, MA 02111-1307, USA.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Commentary:
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%% Introduction
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Creates references to a ``Bibliography\'\' or ``References\'\'
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% section of a Texinfo document, using Texinfo\'s
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% macro system.  Although not as terse a way to cite systems as is
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% found in document systems like TeX, the format is simpler and
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% the rendering  is easier for non-academic readers.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%% Usage
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% References to cited works can be put in any section of a document.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% The cited works must be put in either a Texinfo table (for
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% instance with ``@table @asis ... @end table\'\') or within a
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Texinfo list (something like ``@enumerate ... @end enumerate\'\'
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% or ``@itemize @bullet ... @end itemize\'\').  They are created
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% with the command ``@mybibitem{REF-NAME}\'\'.  To cite a reference
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% with a @mybibitem use ``@mybibcite{REF-NAME}\'\'.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% The beginning of a document must include (using the @include
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% command) the file my-bib-macros.texi, which should be made
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% available in the current directory of the parent file.  A single
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% call should be made to choose to use a list or a table.  The
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% command to chose is called @mybibuselist{NODE}, where NODE is
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% the node containing the location where the references are listed.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%% Example
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% \\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @comment %**start of header
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @setfilename my-file-with-bib.info
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @settitle Texinfo with a Bibliography and References
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @include my-bib-macros.texi
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibuselist{References}
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @comment %**end of header
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @node Top
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @top Top
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @menu
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% * Introduction::
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% * @mybibnode{}::
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @end menu
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @node Introduction
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @chapter Introduction
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% The ability of a documentation format to make cross references to a
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% bibliography, a feature of LaTeX @mybibcite{LaTeX2e}, isn\'t
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% currently supported in Texinfo.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @node @mybibnode{}
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @chapter References
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @itemize @asis
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibitem{LaTeX2e} Leslie Lamport, LaTeX User\'s Guide and
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Reference Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Massachusetts, 1994.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @end itemize
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @bye
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% This example produces (in Info):
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       1 Introduction
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       **************
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       The ability of a documentation format to make cross
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       references to a bibliography, a feature of LaTeX (See item
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       [LaTeX2e] in *Note LaTeX2e: References.), is not currently
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       supported in Texinfo.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       2 References
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       ************
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       Massachusetts, 1994.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% and (in printed output):
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       1 Introduction
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       **************
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       The ability of a documentation format to make cross
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       references to a bibliography, a feature of LaTeX (See item
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       [LaTeX2e] in Chapter 2 [References], page 3.), is not
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       currently supported in Texinfo.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       2 References
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       ************
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%       Massachusetts, 1994.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %%% Notes
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% The pointers to references will be functional in hypertext
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% documentation (info, HTML, XML and others) and properly rendered
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% in print documents, because they are implemented with Texinfo\'s
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% cross referencing capabilities (using @anchor and @ref).  Failures
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% by an author to make proper references with ``my-bib-macros\'\' in
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% their document will give cross referencing errors by Texinfo
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% conversion tools.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Only one ``Reference\'\' section is allowed per document.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% An improvement of this system would create cross references
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% (with @xref) at each cited work to all the originating cross
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% refererences.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% Code:
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' % Configuration Options
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibsetrefnode : Defines the name of the node to contain
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% references.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibsetrefnode{node}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@set mybibrefnode \\node\\
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 164
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibsetrefnode',
                'misc_args' => [
                  'node'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 162
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibnode{} : Macro to be placed at node containing references
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% and calls to @mybibcite{}
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibnode{}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@value{mybibrefnode}
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 171
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibnode',
                'misc_args' => []
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 169
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibusetable : Whether each @mybibitem will be put in a
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% table.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibusetable{node}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@set mybibtable true
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifset mybiblist
',
                  'type' => 'raw'
                },
                {
                  'text' => '@clear mybiblist
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'text' => '@mybibsetrefnode{\\node\\}
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 182
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibusetable',
                'misc_args' => [
                  'node'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 176
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibuselist : Whether each @mybibitem will be put in a
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% list.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibuselist{node}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@set mybiblist true
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifset mybibtable
',
                  'type' => 'raw'
                },
                {
                  'text' => '@clear mybibtable
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'text' => '@mybibsetrefnode{\\node\\}
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 193
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibuselist',
                'misc_args' => [
                  'node'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 187
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibcite{REF} : Cites the cross reference REF.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibcite{ref}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@ifclear mybibrefnode
',
                  'type' => 'raw'
                },
                {
                  'text' => '@mybibmakeref{mybibsetrefnode was not used, \\ref\\}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'text' => '@c %**else if
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifset mybibrefnode
',
                  'type' => 'raw'
                },
                {
                  'text' => '@mybibmakeref{@mybibnode{}, \\ref\\}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 207
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibcite',
                'misc_args' => [
                  'ref'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 198
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibmakeref{node, ref}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '(See item [\\ref\\] in @ref{\\node\\, \\ref\\}.)
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 211
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibmakeref',
                'misc_args' => [
                  'node',
                  'ref'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 209
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% @mybibcite{REF} : Creates a cross referenced citation REF.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' mybibitem{ref}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '@ifclear mybiblist
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifclear mybibtable
',
                  'type' => 'raw'
                },
                {
                  'text' => '@set mybiblist true
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifset mybiblist
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item
',
                  'type' => 'raw'
                },
                {
                  'text' => '@anchor{\\ref\\}[\\ref\\]
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'text' => '@c %**else if
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifset mybibtable
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item @anchor{\\ref\\}[\\ref\\]
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'my-bib-macros.texi',
                    'line_nr' => 230
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'mybibitem',
                'misc_args' => [
                  'ref'
                ]
              },
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 215
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %% my-bib-macros.texi ends here
',
                  'type' => 'rawline_arg'
                }
              ],
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'include',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'References'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mybibuselist'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ]
            },
            {
              'cmdname' => 'set',
              'contents' => [
                {
                  'text' => 'mybiblist',
                  'type' => 'rawline_arg'
                },
                {
                  'text' => 'true',
                  'type' => 'rawline_arg'
                }
              ],
              'info' => {
                'arg_line' => ' mybiblist true
'
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'mybibtable'
                              }
                            ],
                            'info' => {
                              'spaces_after_argument' => {
                                'text' => '
'
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      },
                      {
                        'text' => '@clear mybibtable
',
                        'type' => 'raw'
                      },
                      {
                        'cmdname' => 'end',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'ifset'
                              }
                            ],
                            'info' => {
                              'spaces_after_argument' => {
                                'text' => '
'
                              }
                            },
                            'type' => 'line_arg'
                          }
                        ],
                        'extra' => {
                          'text_arg' => 'ifset'
                        },
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'file_name' => 'bib-example.texi',
                          'line_nr' => 26,
                          'macro' => 'mybibuselist'
                        }
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'bib-example.texi',
                      'line_nr' => 26,
                      'macro' => 'mybibuselist'
                    }
                  },
                  'sourcemark_type' => 'ignored_conditional_block'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'References'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mybibsetrefnode'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'cmdname' => 'set',
              'contents' => [
                {
                  'text' => 'mybibrefnode',
                  'type' => 'rawline_arg'
                },
                {
                  'text' => 'References',
                  'type' => 'rawline_arg'
                }
              ],
              'info' => {
                'arg_line' => ' mybibrefnode References
'
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'comment',
              'contents' => [
                {
                  'text' => ' %**end of header
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 30
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Introduction'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Introduction'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 34
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 3,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'mybibnode'
                            },
                            'type' => 'macro_call'
                          },
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 1,
                          'element' => {
                            'cmdname' => 'value',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'mybibrefnode'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => 'References',
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 1,
                          'position' => 10,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        },
                        {
                          'counter' => 3,
                          'position' => 10,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'References'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'References'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 35
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'after_menu_description_line'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 37
              }
            }
          ],
          'source_info' => {
            'file_name' => 'bib-example.texi',
            'line_nr' => 33
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 31
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Introduction'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Introduction'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 39
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Introduction'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'The ability of a documentation format to make cross references to a
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 4,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'LaTeX2e'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mybibcite'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 33,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'cmdname' => 'ifclear',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'mybibrefnode'
                              }
                            ],
                            'info' => {
                              'spaces_after_argument' => {
                                'text' => '
'
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      },
                      {
                        'text' => '@mybibmakeref{mybibsetrefnode was not used, LaTeX2e}
',
                        'type' => 'raw'
                      },
                      {
                        'cmdname' => 'end',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'ifclear'
                              }
                            ],
                            'info' => {
                              'spaces_after_argument' => {
                                'text' => '
'
                              }
                            },
                            'type' => 'line_arg'
                          }
                        ],
                        'extra' => {
                          'text_arg' => 'ifclear'
                        },
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'file_name' => 'bib-example.texi',
                          'line_nr' => 43,
                          'macro' => 'mybibcite'
                        }
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'bib-example.texi',
                      'line_nr' => 43,
                      'macro' => 'mybibcite'
                    }
                  },
                  'position' => 33,
                  'sourcemark_type' => 'ignored_conditional_block'
                }
              ],
              'text' => 'bibliography, a feature of LaTeX '
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' %**else if
',
                  'type' => 'rawline_arg'
                }
              ],
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'mybibrefnode'
                              }
                            ],
                            'info' => {
                              'spaces_after_argument' => {
                                'text' => '
'
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'bib-example.texi',
                      'line_nr' => 43,
                      'macro' => 'mybibcite'
                    }
                  },
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ]
            },
            {
              'source_marks' => [
                {
                  'counter' => 5,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@mybibnode{}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'LaTeX2e'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mybibmakeref'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => '(See item [LaTeX2e] in '
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 6,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'mybibnode'
                            },
                            'type' => 'macro_call'
                          },
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 2,
                          'element' => {
                            'cmdname' => 'value',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'mybibrefnode'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => 'References',
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 2,
                          'position' => 10,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        },
                        {
                          'counter' => 6,
                          'position' => 10,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'References'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'References'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'LaTeX2e'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 43,
                'macro' => 'mybibmakeref'
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 5,
                  'position' => 2,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'extra' => {
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'bib-example.texi',
                      'line_nr' => 43,
                      'macro' => 'mybibcite'
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
                  'position' => 3,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '.)
'
            },
            {
              'text' => ', isn\'t
'
            },
            {
              'text' => 'currently supported in Texinfo.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 40
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 3,
                      'position' => 10,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 7,
                      'position' => 10,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'References'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'References'
      },
      'info' => {
        'spaces_before_argument' => {
          'source_marks' => [
            {
              'counter' => 7,
              'element' => {
                'contents' => [
                  {
                    'type' => 'brace_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'mybibnode'
                },
                'type' => 'macro_call'
              },
              'position' => 1,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 3,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'mybibrefnode'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => 'References',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            }
          ],
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 46
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'References'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'w',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'bib-example.texi',
                        'line_nr' => 49
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 8,
                      'element' => {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'LaTeX2e'
                              }
                            ],
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'mybibitem'
                        },
                        'type' => 'macro_call'
                      },
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 3,
                      'element' => {
                        'cmdname' => 'ifclear',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'mybiblist'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => {
                                    'text' => '
'
                                  }
                                },
                                'type' => 'block_line_arg'
                              }
                            ],
                            'type' => 'arguments_line'
                          },
                          {
                            'text' => '@ifclear mybibtable
',
                            'type' => 'raw'
                          },
                          {
                            'text' => '@set mybiblist true
',
                            'type' => 'raw'
                          },
                          {
                            'text' => '@end ifclear
',
                            'type' => 'raw'
                          },
                          {
                            'cmdname' => 'end',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'ifclear'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => {
                                    'text' => '
'
                                  }
                                },
                                'type' => 'line_arg'
                              }
                            ],
                            'extra' => {
                              'text_arg' => 'ifclear'
                            },
                            'info' => {
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'source_info' => {
                              'file_name' => 'bib-example.texi',
                              'line_nr' => 51,
                              'macro' => 'mybibitem'
                            }
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'file_name' => 'bib-example.texi',
                          'line_nr' => 51,
                          'macro' => 'mybibitem'
                        }
                      },
                      'position' => 1,
                      'sourcemark_type' => 'ignored_conditional_block'
                    },
                    {
                      'counter' => 2,
                      'element' => {
                        'cmdname' => 'ifset',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'mybiblist'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => {
                                    'text' => '
'
                                  }
                                },
                                'type' => 'block_line_arg'
                              }
                            ],
                            'type' => 'arguments_line'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'file_name' => 'bib-example.texi',
                          'line_nr' => 51,
                          'macro' => 'mybibitem'
                        }
                      },
                      'position' => 1,
                      'sourcemark_type' => 'expanded_conditional_command',
                      'status' => 'start'
                    }
                  ],
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'before_item'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'cmdname' => 'anchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'LaTeX2e'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'LaTeX2e'
                  },
                  'source_info' => {
                    'file_name' => 'bib-example.texi',
                    'line_nr' => 51,
                    'macro' => 'mybibitem'
                  }
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'element' => {
                            'cmdname' => 'end',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'ifset'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => {
                                    'text' => '
'
                                  }
                                },
                                'type' => 'line_arg'
                              }
                            ],
                            'extra' => {
                              'text_arg' => 'ifset'
                            },
                            'info' => {
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'source_info' => {
                              'file_name' => 'bib-example.texi',
                              'line_nr' => 51,
                              'macro' => 'mybibitem'
                            }
                          },
                          'position' => 10,
                          'sourcemark_type' => 'expanded_conditional_command',
                          'status' => 'end'
                        }
                      ],
                      'text' => '[LaTeX2e]
'
                    },
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' %**else if
',
                          'type' => 'rawline_arg'
                        }
                      ],
                      'source_marks' => [
                        {
                          'counter' => 4,
                          'element' => {
                            'cmdname' => 'ifset',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'mybibtable'
                                      }
                                    ],
                                    'info' => {
                                      'spaces_after_argument' => {
                                        'text' => '
'
                                      }
                                    },
                                    'type' => 'block_line_arg'
                                  }
                                ],
                                'type' => 'arguments_line'
                              },
                              {
                                'text' => '@item @anchor{LaTeX2e}[LaTeX2e]
',
                                'type' => 'raw'
                              },
                              {
                                'cmdname' => 'end',
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'ifset'
                                      }
                                    ],
                                    'info' => {
                                      'spaces_after_argument' => {
                                        'text' => '
'
                                      }
                                    },
                                    'type' => 'line_arg'
                                  }
                                ],
                                'extra' => {
                                  'text_arg' => 'ifset'
                                },
                                'info' => {
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'source_info' => {
                                  'file_name' => 'bib-example.texi',
                                  'line_nr' => 51,
                                  'macro' => 'mybibitem'
                                }
                              }
                            ],
                            'info' => {
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'source_info' => {
                              'file_name' => 'bib-example.texi',
                              'line_nr' => 51,
                              'macro' => 'mybibitem'
                            }
                          },
                          'sourcemark_type' => 'ignored_conditional_block'
                        },
                        {
                          'counter' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ]
                    },
                    {
                      'text' => ' Leslie Lamport, LaTeX User\'s Guide and
'
                    },
                    {
                      'text' => 'Reference Manual, 2nd edition, Addison-Wesley, Reading,
'
                    },
                    {
                      'text' => 'Massachusetts, 1994.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 51,
                'macro' => 'mybibitem'
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'itemize'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'itemize'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 55
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'bib-example.texi',
            'line_nr' => 49
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 47
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    },
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'text_after_end'
        }
      ],
      'type' => 'postamble_after_end'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'bib_example'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'bib_example'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'bib_example'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'bib_example'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'bib_example'}{'contents'}[4]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'bib_example'}{'contents'}[4]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'bib_example'}{'contents'}[6]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'bib_example'}{'contents'}[6]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];

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

$result_sectioning{'bib_example'} = {
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
                    'normalized' => 'Introduction'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'References'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0];
$result_sectioning{'bib_example'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'bib_example'};

$result_nodes{'bib_example'} = [
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
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'References'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Introduction'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'bib_example'}[0];
$result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'bib_example'}[0];
$result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'bib_example'}[0];
$result_nodes{'bib_example'}[1] = $result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'bib_example'}[2] = $result_nodes{'bib_example'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'bib_example'} = [
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
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'References'
          }
        },
        'up' => {}
      },
      'normalized' => 'Introduction'
    }
  },
  {}
];
$result_menus{'bib_example'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'bib_example'}[1];
$result_menus{'bib_example'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'bib_example'}[0];
$result_menus{'bib_example'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'bib_example'}[0];
$result_menus{'bib_example'}[2] = $result_menus{'bib_example'}[1]{'extra'}{'menu_directions'}{'next'};

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


$result_floats{'bib_example'} = {};


1;
