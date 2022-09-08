use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'texi_bib_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Copyright (C) 2004  Aaron S. Hawley
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Copyright (C) 2004  Aaron S. Hawley
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Keywords: docs, texinfo, extensions, bib
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Keywords: docs, texinfo, extensions, bib
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % This file is free software; you can redistribute it and/or modify
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % This file is free software; you can redistribute it and/or modify
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % it under the terms of the GNU General Public License as published by
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % it under the terms of the GNU General Public License as published by
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % the Free Software Foundation; either version 2, or (at your option)
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % the Free Software Foundation; either version 2, or (at your option)
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % any later version.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % any later version.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % This file is distributed in the hope that it will be useful,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % This file is distributed in the hope that it will be useful,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % GNU General Public License for more details.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % GNU General Public License for more details.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % You should have received a copy of the GNU General Public License
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % You should have received a copy of the GNU General Public License
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % along with texi2html; see the file COPYING.  If not, write to
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % along with texi2html; see the file COPYING.  If not, write to
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Boston, MA 02111-1307, USA.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Boston, MA 02111-1307, USA.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %**start of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'comment',
              'extra' => {
                'misc_args' => [
                  ' %**start of header
'
                ]
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'my-file-with-bib.info'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'setfilename',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'my-file-with-bib.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 23,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Texinfo with a Bibliography and References'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'settitle',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 24,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' \\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' \\input texinfo   @c -*-texinfo-*-
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% my-bib-macros.texi --- Texinfo macros providing a crude
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% my-bib-macros.texi --- Texinfo macros providing a crude
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% bibliography and citation capability.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% bibliography and citation capability.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Copyright (C) 2004  Aaron S. Hawley
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Copyright (C) 2004  Aaron S. Hawley
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Author: Aaron S. Hawley <ashawley@gnu.uvm.edu>
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Keywords: docs, texinfo, extensions, bib
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Keywords: docs, texinfo, extensions, bib
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % This file is free software; you can redistribute it and/or modify
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % This file is free software; you can redistribute it and/or modify
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % it under the terms of the GNU General Public License as published by
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % it under the terms of the GNU General Public License as published by
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % the Free Software Foundation; either version 2, or (at your option)
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % the Free Software Foundation; either version 2, or (at your option)
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % any later version.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % any later version.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % This file is distributed in the hope that it will be useful,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % This file is distributed in the hope that it will be useful,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % but WITHOUT ANY WARRANTY; without even the implied warranty of
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % GNU General Public License for more details.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % GNU General Public License for more details.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % You should have received a copy of the GNU General Public License
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % You should have received a copy of the GNU General Public License
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % along with texi2html; see the file COPYING.  If not, write to
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % along with texi2html; see the file COPYING.  If not, write to
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Boston, MA 02111-1307, USA.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Boston, MA 02111-1307, USA.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Commentary:
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Commentary:
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%% Introduction
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%% Introduction
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Creates references to a ``Bibliography\'\' or ``References\'\'
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Creates references to a ``Bibliography\'\' or ``References\'\'
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% section of a Texinfo document, using Texinfo\'s
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% section of a Texinfo document, using Texinfo\'s
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% macro system.  Although not as terse a way to cite systems as is
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% macro system.  Although not as terse a way to cite systems as is
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% found in document systems like TeX, the format is simpler and
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% found in document systems like TeX, the format is simpler and
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% the rendering  is easier for non-academic readers.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% the rendering  is easier for non-academic readers.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%% Usage
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%% Usage
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% References to cited works can be put in any section of a document.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% References to cited works can be put in any section of a document.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% The cited works must be put in either a Texinfo table (for
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% The cited works must be put in either a Texinfo table (for
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% instance with ``@table @asis ... @end table\'\') or within a
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% instance with ``@table @asis ... @end table\'\') or within a
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Texinfo list (something like ``@enumerate ... @end enumerate\'\'
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Texinfo list (something like ``@enumerate ... @end enumerate\'\'
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% or ``@itemize @bullet ... @end itemize\'\').  They are created
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% or ``@itemize @bullet ... @end itemize\'\').  They are created
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% with the command ``@mybibitem{REF-NAME}\'\'.  To cite a reference
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% with the command ``@mybibitem{REF-NAME}\'\'.  To cite a reference
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% with a @mybibitem use ``@mybibcite{REF-NAME}\'\'.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% with a @mybibitem use ``@mybibcite{REF-NAME}\'\'.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% The beginning of a document must include (using the @include
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% The beginning of a document must include (using the @include
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% command) the file my-bib-macros.texi, which should be made
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% command) the file my-bib-macros.texi, which should be made
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% available in the current directory of the parent file.  A single
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% available in the current directory of the parent file.  A single
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% call should be made to choose to use a list or a table.  The
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% call should be made to choose to use a list or a table.  The
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% command to chose is called @mybibuselist{NODE}, where NODE is
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% command to chose is called @mybibuselist{NODE}, where NODE is
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% the node containing the location where the references are listed.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% the node containing the location where the references are listed.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%% Example
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%% Example
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% \\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% \\input texinfo   @c -*-texinfo-*-
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @comment %**start of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @comment %**start of header
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @setfilename my-file-with-bib.info
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @setfilename my-file-with-bib.info
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @settitle Texinfo with a Bibliography and References
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @settitle Texinfo with a Bibliography and References
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @include my-bib-macros.texi
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @include my-bib-macros.texi
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibuselist{References}
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibuselist{References}
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @comment %**end of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @comment %**end of header
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @node Top
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @node Top
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @top Top
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @top Top
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @menu
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @menu
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% * Introduction::
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% * Introduction::
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% * @mybibnode{}::
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% * @mybibnode{}::
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @end menu
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @end menu
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @node Introduction
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @node Introduction
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @chapter Introduction
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @chapter Introduction
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% The ability of a documentation format to make cross references to a
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% The ability of a documentation format to make cross references to a
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% bibliography, a feature of LaTeX @mybibcite{LaTeX2e}, isn\'t
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% bibliography, a feature of LaTeX @mybibcite{LaTeX2e}, isn\'t
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% currently supported in Texinfo.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% currently supported in Texinfo.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @node @mybibnode{}
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @node @mybibnode{}
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @chapter References
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @chapter References
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @itemize @asis
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @itemize @asis
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibitem{LaTeX2e} Leslie Lamport, LaTeX User\'s Guide and
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibitem{LaTeX2e} Leslie Lamport, LaTeX User\'s Guide and
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Reference Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Reference Manual, 2nd edition, Addison-Wesley, Reading,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Massachusetts, 1994.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Massachusetts, 1994.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @end itemize
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @end itemize
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @bye
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @bye
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% This example produces (in Info):
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% This example produces (in Info):
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       1 Introduction
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       1 Introduction
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       **************
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       **************
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       The ability of a documentation format to make cross
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       The ability of a documentation format to make cross
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       references to a bibliography, a feature of LaTeX (See item
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       references to a bibliography, a feature of LaTeX (See item
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       [LaTeX2e] in *Note LaTeX2e: References.), is not currently
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       [LaTeX2e] in *Note LaTeX2e: References.), is not currently
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       supported in Texinfo.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       supported in Texinfo.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       2 References
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       2 References
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       ************
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       ************
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       Massachusetts, 1994.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       Massachusetts, 1994.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% and (in printed output):
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% and (in printed output):
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       1 Introduction
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       1 Introduction
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       **************
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       **************
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       The ability of a documentation format to make cross
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       The ability of a documentation format to make cross
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       references to a bibliography, a feature of LaTeX (See item
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       references to a bibliography, a feature of LaTeX (See item
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       [LaTeX2e] in Chapter 2 [References], page 3.), is not
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       [LaTeX2e] in Chapter 2 [References], page 3.), is not
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       currently supported in Texinfo.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       currently supported in Texinfo.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       2 References
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       2 References
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       ************
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       ************
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       [LaTeX2e] Leslie Lamport, LaTeX User\'s Guide and Reference
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       Manual, 2nd edition, Addison-Wesley, Reading,
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%       Massachusetts, 1994.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%       Massachusetts, 1994.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %%% Notes
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %%% Notes
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% The pointers to references will be functional in hypertext
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% The pointers to references will be functional in hypertext
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% documentation (info, HTML, XML and others) and properly rendered
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% documentation (info, HTML, XML and others) and properly rendered
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% in print documents, because they are implemented with Texinfo\'s
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% in print documents, because they are implemented with Texinfo\'s
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% cross referencing capabilities (using @anchor and @ref).  Failures
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% cross referencing capabilities (using @anchor and @ref).  Failures
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% by an author to make proper references with ``my-bib-macros\'\' in
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% by an author to make proper references with ``my-bib-macros\'\' in
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% their document will give cross referencing errors by Texinfo
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% their document will give cross referencing errors by Texinfo
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% conversion tools.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% conversion tools.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Only one ``Reference\'\' section is allowed per document.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Only one ``Reference\'\' section is allowed per document.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% An improvement of this system would create cross references
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% An improvement of this system would create cross references
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% (with @xref) at each cited work to all the originating cross
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% (with @xref) at each cited work to all the originating cross
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% refererences.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% refererences.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% Code:
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% Code:
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' % Configuration Options
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' % Configuration Options
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibsetrefnode : Defines the name of the node to contain
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibsetrefnode : Defines the name of the node to contain
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% references.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% references.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibsetrefnode',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'node',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@set mybibrefnode \\node\\',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibsetrefnode{node}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 162,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibnode{} : Macro to be placed at node containing references
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibnode{} : Macro to be placed at node containing references
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% and calls to @mybibcite{}
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% and calls to @mybibcite{}
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibnode',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@value{mybibrefnode}',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibnode{}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 169,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibusetable : Whether each @mybibitem will be put in a
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibusetable : Whether each @mybibitem will be put in a
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% table.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% table.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibusetable',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'node',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@set mybibtable true
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifset mybiblist
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@clear mybiblist
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@mybibsetrefnode{\\node\\}',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibusetable{node}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 176,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibuselist : Whether each @mybibitem will be put in a
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibuselist : Whether each @mybibitem will be put in a
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% list.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% list.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibuselist',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'node',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@set mybiblist true
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifset mybibtable
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@clear mybibtable
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@mybibsetrefnode{\\node\\}',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibuselist{node}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 187,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibcite{REF} : Cites the cross reference REF.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibcite{REF} : Cites the cross reference REF.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibcite',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'ref',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@ifclear mybibrefnode
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@mybibmakeref{mybibsetrefnode was not used, \\ref\\}
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@c %**else if
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifset mybibrefnode
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@mybibmakeref{@mybibnode{}, \\ref\\}
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibcite{ref}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 198,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibmakeref',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'node',
                  'type' => 'macro_arg'
                },
                {
                  'parent' => {},
                  'text' => 'ref',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '(See item [\\ref\\] in @ref{\\node\\, \\ref\\}.)',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibmakeref{node, ref}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 209,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% @mybibcite{REF} : Creates a cross referenced citation REF.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% @mybibcite{REF} : Creates a cross referenced citation REF.
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibitem',
                  'type' => 'macro_name'
                },
                {
                  'parent' => {},
                  'text' => 'ref',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@ifclear mybiblist
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifclear mybibtable
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@set mybiblist true
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifclear
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifset mybiblist
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@item
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@anchor{\\ref\\}[\\ref\\]
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@c %**else if
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@ifset mybibtable
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@item @anchor{\\ref\\}[\\ref\\]
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end ifset
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'macro'
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'arg_line' => ' mybibitem{ref}
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'my-bib-macros.texi',
                'line_nr' => 215,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %% my-bib-macros.texi ends here
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %% my-bib-macros.texi ends here
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybiblist',
                  'type' => 'misc_arg'
                },
                {
                  'parent' => {},
                  'text' => 'true',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'arg_line' => ' mybiblist true
',
                'misc_args' => [
                  'mybiblist',
                  'true'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'mybibrefnode',
                  'type' => 'misc_arg'
                },
                {
                  'parent' => {},
                  'text' => 'References',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'arg_line' => ' mybibrefnode References
',
                'misc_args' => [
                  'mybibrefnode',
                  'References'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %**end of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'comment',
              'extra' => {
                'misc_args' => [
                  ' %**end of header
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 31,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Introduction'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Introduction'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 35,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'References'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'References'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 36,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'after_menu_description_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 38,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'bib-example.texi',
            'line_nr' => 34,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 32,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Introduction'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Introduction'
          }
        ],
        'normalized' => 'Introduction',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 40,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Introduction'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'The ability of a documentation format to make cross references to a
'
            },
            {
              'parent' => {},
              'text' => 'bibliography, a feature of LaTeX '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' %**else if
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %**else if
'
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '(See item [LaTeX2e] in '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'References'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'LaTeX2e'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'References'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'node',
                  'contents' => [],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'nodes_manuals' => [
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'References'
                      }
                    ],
                    'normalized' => 'References',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => 'bib-example.texi',
                    'line_nr' => 47,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'References'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 44,
                'macro' => 'mybibmakeref'
              }
            },
            {
              'parent' => {},
              'text' => '.)
'
            },
            {
              'parent' => {},
              'text' => ', isn\'t
'
            },
            {
              'parent' => {},
              'text' => 'currently supported in Texinfo.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 41,
        'macro' => ''
      }
    },
    {},
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'References'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => 'bib-example.texi',
                    'line_nr' => 50,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'parent' => {},
              'type' => 'before_item'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'LaTeX2e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'contents' => [],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'LaTeX2e'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => 'bib-example.texi',
                    'line_nr' => 52,
                    'macro' => 'mybibitem'
                  }
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '[LaTeX2e]
'
                    },
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' %**else if
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' %**else if
'
                        ]
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' Leslie Lamport, LaTeX User\'s Guide and
'
                    },
                    {
                      'parent' => {},
                      'text' => 'Reference Manual, 2nd edition, Addison-Wesley, Reading,
'
                    },
                    {
                      'parent' => {},
                      'text' => 'Massachusetts, 1994.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 52,
                'macro' => 'mybibitem'
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'bib-example.texi',
                'line_nr' => 56,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'bib-example.texi',
            'line_nr' => 50,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'bib-example.texi',
        'line_nr' => 48,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[17];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[18];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[19];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[21];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[7];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[9];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[10];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[12];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[13];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[14];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[15];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[17];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[18];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[19];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[20];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[22];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[23];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[24];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[25];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[27];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[29];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[31];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[31]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[32];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[32]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[33];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[33]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[34];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[34]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[35];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[35]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[36]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[37]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[37];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[37]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[38]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[39]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[39];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[39]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[40]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[41]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[41];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[41]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[42]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[42];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[42]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[43]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[43];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[43]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[44];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[44]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[45]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[45];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[45]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[46]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[46];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[46]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[47]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[47];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[47]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[48]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[49]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[49];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[49]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[50];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[50]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[51]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[51];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[51]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[52]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[52];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[52]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[53]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[53];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[53]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[54]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[54];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[54]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[55]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[56]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[56];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[56]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[57]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[58]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[58];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[58]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[59]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[60]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[60];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[60]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[61]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[61];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[61]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[62]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[62];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[62]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[63]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[63];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[63]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[64]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[64];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[64]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[65]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[65];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[65]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[66]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[66];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[66]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[67]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[67];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[67]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[68]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[68];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[68]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[69]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[69];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[69]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[70]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[70];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[70]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[71]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[71];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[71]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[72]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[72];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[72]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[73]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[73];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[73]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[74]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[74];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[74]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[75]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[75];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[75]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[76]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[76];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[76]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[77]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[77];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[77]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[78]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[78];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[78]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[79]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[79];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[79]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[80]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[80];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[80]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[81]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[81];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[81]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[82]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[82];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[82]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[83]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[83];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[83]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[84]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[84];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[84]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[85]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[85];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[85]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[86]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[86];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[86]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[87]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[87];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[87]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[88]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[88];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[88]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[89]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[89];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[89]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[90]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[90];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[90]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[91]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[91];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[91]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[92]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[92];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[92]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[93]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[93];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[93]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[94]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[94];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[94]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[95]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[95];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[95]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[96]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[96];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[96]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[97]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[97];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[97]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[98]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[99]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[99];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[99]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[100]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[101]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[101];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[101]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[102]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[103]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[103];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[103]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[104]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[104];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[104]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[105]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[105];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[105]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[106]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[106];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[106]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[107]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[107];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[107]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[108]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[108];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[108]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[109]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[109];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[109]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[110]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[110];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[110]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[111]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[111];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[111]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[112]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[112];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[112]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[113]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[113];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[113]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[114]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[114];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[114]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[115]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[115];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[115]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[116]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[116];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[116]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[117]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[117];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[117]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[118]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[119]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[119];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[119]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[120]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[121]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[121];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[121]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[122]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[122];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[122]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[123]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[123];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[123]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[124]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[124];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[124]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[125]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[125];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[125]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[126]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[126];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[126]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[127]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[127];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[127]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[128]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[128];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[128]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[129]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[129];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[129]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[130]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[130];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[130]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[131]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[131];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[131]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[132]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[132];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[132]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[133]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[133];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[133]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[134]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[134];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[134]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[135]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[135];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[135]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[136]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[137]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[137];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[137]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[138]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[139]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[139];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[139]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[140]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[141]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[141];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[141]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[142]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[142];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[142]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[143]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[143];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[143]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[144]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[144];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[144]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[145]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[145];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[145]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[146]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[146];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[146]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[147]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[147];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[147]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[148]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[149]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[149];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[149]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[150]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[151]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[151];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[151]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[152]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[152];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[152]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[153]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[153];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[153]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[154]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[155]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[155];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[155]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[156]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[157]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[157];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[157]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[158]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[159]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[159];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[159]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[160]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[161]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[161];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[161]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[162]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[162];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[162]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[163]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[2]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[164]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[165]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[166]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[166];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[166]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[167]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[167];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[167]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[168]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[2]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[169]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[170]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[171]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[171];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[171]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[172]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[172];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[172]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[173]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[6]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[174]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[175]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[176]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[176];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[176]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[177]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[177];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[177]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[178]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[6]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[179]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[180]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[181]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[182]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[182];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[182]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[183]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[8]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[9]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[9];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'contents'}[9]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[184]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[185]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'args'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[2]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[186]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[187]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[188]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[188];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[188]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[189]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[8]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[9]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[10]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[11]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[12]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[13]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[14]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[15]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[15];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'contents'}[15]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[190]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[191]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[192]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[192];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[192]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[193]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[193];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[193]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[193];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[193]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[194]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[194];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[194]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[194];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[194]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[195]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[196]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[196];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[196]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'contents'}[197]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[1]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[3]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[3];
$result_trees{'texi_bib_example'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'};
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'}{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[4];
$result_trees{'texi_bib_example'}{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[5] = $result_trees{'texi_bib_example'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'extra'}{'label'};
$result_trees{'texi_bib_example'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[2];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[6];
$result_trees{'texi_bib_example'}{'contents'}[6]{'parent'} = $result_trees{'texi_bib_example'};
$result_trees{'texi_bib_example'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'texi_bib_example'}{'contents'}[7];
$result_trees{'texi_bib_example'}{'contents'}[7]{'parent'} = $result_trees{'texi_bib_example'};

$result_texis{'texi_bib_example'} = '\\input texinfo   @c -*-texinfo-*-
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
@setfilename my-file-with-bib.info
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

@itemize @asis

@item
@anchor{LaTeX2e}[LaTeX2e]
@c %**else if
 Leslie Lamport, LaTeX User\'s Guide and
Reference Manual, 2nd edition, Addison-Wesley, Reading,
Massachusetts, 1994.

@end itemize

@bye
';


$result_texts{'texi_bib_example'} = '


















































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

$result_sectioning{'texi_bib_example'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Introduction'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'References'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0];
$result_sectioning{'texi_bib_example'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'texi_bib_example'};

$result_nodes{'texi_bib_example'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'Introduction'
      },
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_number' => 2
              }
            },
            'normalized' => 'References'
          },
          'structure' => {
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'texi_bib_example'}{'structure'}{'menu_child'};
$result_nodes{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'texi_bib_example'};
$result_nodes{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'texi_bib_example'};
$result_nodes{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'texi_bib_example'};
$result_nodes{'texi_bib_example'}{'structure'}{'node_next'} = $result_nodes{'texi_bib_example'}{'structure'}{'menu_child'};

$result_menus{'texi_bib_example'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Introduction'
      },
      'structure' => {
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'References'
          },
          'structure' => {
            'menu_prev' => {},
            'menu_up' => {},
            'menu_up_hash' => {
              'Top' => 1
            }
          }
        },
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'texi_bib_example'}{'structure'}{'menu_child'};
$result_menus{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'texi_bib_example'};
$result_menus{'texi_bib_example'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'texi_bib_example'};

$result_errors{'texi_bib_example'} = [
  {
    'error_line' => 'warning: @ifclear should only appear at the beginning of a line (possibly involving @mybibcite)
',
    'file_name' => 'bib-example.texi',
    'line_nr' => 44,
    'macro' => 'mybibcite',
    'text' => '@ifclear should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'texi_bib_example'} = {};



$result_converted{'html'}->{'texi_bib_example'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Texinfo with a Bibliography and References</title>

<meta name="description" content="Texinfo with a Bibliography and References">
<meta name="keywords" content="Texinfo with a Bibliography and References">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="texi2any">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
h1.settitle {text-align:center}
pre.menu-comment-preformatted {font-family: serif}
span.program-in-footer {font-size: smaller}
td.button-direction-about {text-align:center}
td.menu-entry-description {vertical-align: top}
td.menu-entry-destination {vertical-align: top}
td.name-direction-about {text-align:center}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<h1 class="settitle">Texinfo with a Bibliography and References</h1>
<hr>














































<div class="top-level-extent" id="Top">
<table class="nav-panel" cellpadding="1" cellspacing="1" border="0">
<tr><td>[ &lt; ]</td>
<td>[<a href="#Introduction" title="Next section in reading order"> &gt; </a>]</td>
<td> &nbsp; </td>
<td>[Contents]</td>
<td>[Index]</td>
<td>[<a href="#SEC_About" title="About (help)"> ? </a>]</td>
</tr></table>
<h1 class="top" id="Top-1">Top</h1>

<table class="menu" border="0" cellspacing="0">
<tr><td class="menu-entry-destination"><a href="#Introduction">1 Introduction</a></td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination"><a href="#References">2 References</a></td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="3"><pre class="menu-comment-preformatted">

</pre></th></tr></table>

<hr style="height: 6px;">
<div class="chapter-level-extent" id="Introduction">
<table class="nav-panel" cellpadding="1" cellspacing="1" border="0">
<tr><td>[<a href="#Top" title="Beginning of this chapter or previous chapter"> &lt;&lt; </a>]</td>
<td>[<a href="#Top" title="Previous section in reading order"> &lt; </a>]</td>
<td>[<a href="#Top" title="Up section"> Up </a>]</td>
<td>[<a href="#References" title="Next section in reading order"> &gt; </a>]</td>
<td>[<a href="#References" title="Next chapter"> &gt;&gt; </a>]</td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td>[<a href="#Top" title="Cover (top) of document">Top</a>]</td>
<td>[Contents]</td>
<td>[Index]</td>
<td>[<a href="#SEC_About" title="About (help)"> ? </a>]</td>
</tr></table>
<h1 class="chapter" id="Introduction-1">1 Introduction</h1>

<p>The ability of a documentation format to make cross references to a
bibliography, a feature of LaTeX (See item [LaTeX2e] in <a class="ref" href="#References">LaTeX2e</a>.)
, isn&rsquo;t
currently supported in Texinfo.
</p>
<hr>
</div>
<div class="chapter-level-extent" id="References">
<table class="nav-panel" cellpadding="1" cellspacing="1" border="0">
<tr><td>[<a href="#Introduction" title="Beginning of this chapter or previous chapter"> &lt;&lt; </a>]</td>
<td>[<a href="#Introduction" title="Previous section in reading order"> &lt; </a>]</td>
<td>[<a href="#Top" title="Up section"> Up </a>]</td>
<td>[ &gt; ]</td>
<td>[ &gt;&gt; ]</td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td> &nbsp; </td>
<td>[<a href="#Top" title="Cover (top) of document">Top</a>]</td>
<td>[Contents]</td>
<td>[Index]</td>
<td>[<a href="#SEC_About" title="About (help)"> ? </a>]</td>
</tr></table>
<h1 class="chapter" id="References-1">2 References</h1>

<ul class="itemize">
<li><a class="anchor" id="LaTeX2e"></a>[LaTeX2e]
 Leslie Lamport, LaTeX User&rsquo;s Guide and
Reference Manual, 2nd edition, Addison-Wesley, Reading,
Massachusetts, 1994.

</li></ul>

</div>
</div>
<hr>
<div class="element-about" id="SEC_About">
<table class="nav-panel" cellpadding="1" cellspacing="1" border="0">
<tr><td>[<a href="#Top" title="Cover (top) of document">Top</a>]</td>
<td>[Contents]</td>
<td>[Index]</td>
<td>[<a href="#SEC_About" title="About (help)"> ? </a>]</td>
</tr></table>
<h1 class="about-heading">About This Document</h1>

<p>
  This document was generated on <em class="emph">a sunny day</em> using <a class="uref" href="http://www.gnu.org/software/texinfo/"><em class="emph">texi2any</em></a>.
</p>
<p>
  The buttons in the navigation panels have the following meaning:
</p>
<table border="1">
  <tr>
    <th> Button </th>
    <th> Name </th>
    <th> Go to </th>
    <th> From 1.2.3 go to</th>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &lt;&lt; ] </td>
    <td class="name-direction-about">FastBack</td>
    <td>Beginning of this chapter or previous chapter</td>
    <td>1</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &lt; ] </td>
    <td class="name-direction-about">Back</td>
    <td>Previous section in reading order</td>
    <td>1.2.2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ Up ] </td>
    <td class="name-direction-about">Up</td>
    <td>Up section</td>
    <td>1.2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &gt; ] </td>
    <td class="name-direction-about">Forward</td>
    <td>Next section in reading order</td>
    <td>1.2.4</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &gt;&gt; ] </td>
    <td class="name-direction-about">FastForward</td>
    <td>Next chapter</td>
    <td>2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Top] </td>
    <td class="name-direction-about">Top</td>
    <td>Cover (top) of document</td>
    <td> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Contents] </td>
    <td class="name-direction-about">Contents</td>
    <td>Table of contents</td>
    <td> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Index] </td>
    <td class="name-direction-about">Index</td>
    <td>Index</td>
    <td> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ ? ] </td>
    <td class="name-direction-about">About</td>
    <td>About (help)</td>
    <td> &nbsp; </td>
  </tr>
</table>

<p>
  where the <strong class="strong"> Example </strong> assumes that the current position is at <strong class="strong"> Subsubsection One-Two-Three </strong> of a document of the following structure:
</p>

<ul>
  <li> 1. Section One
    <ul>
      <li>1.1 Subsection One-One
        <ul>
          <li>...</li>
        </ul>
      </li>
      <li>1.2 Subsection One-Two
        <ul>
          <li>1.2.1 Subsubsection One-Two-One</li>
          <li>1.2.2 Subsubsection One-Two-Two</li>
          <li>1.2.3 Subsubsection One-Two-Three &nbsp; &nbsp;
            <strong>&lt;== Current Position </strong></li>
          <li>1.2.4 Subsubsection One-Two-Four</li>
        </ul>
      </li>
      <li>1.3 Subsection One-Three
        <ul>
          <li>...</li>
        </ul>
      </li>
      <li>1.4 Subsection One-Four</li>
    </ul>
  </li>
</ul>
</div><hr>
<p>
  <span class="program-in-footer">This document was generated on <em class="emph">a sunny day</em> using <a class="uref" href="http://www.gnu.org/software/texinfo/"><em class="emph">texi2any</em></a>.</span>
</p>


</body>
</html>
';

1;
