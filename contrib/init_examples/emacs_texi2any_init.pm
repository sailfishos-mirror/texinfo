# Copyright 2024-2025 Free Software Foundation, Inc.
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# This is an example init file that could replace the elisp code used
# in Emacs to postprocess Texinfo manuals.  If and when this could be
# used in Emacs is not clear, in particular because the elisp code handles
# compatibility for older GNU Texinfo releases.  There is a discussion here:
#  https://lists.gnu.org/archive/html/help-texinfo/2024-03/msg00009.html

use strict;


texinfo_set_from_init_file('TOP_BUTTONS', undef);

texinfo_set_from_init_file('EXTRA_HEAD',
'<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
');

# NOTE it is likely that the div added in the following code is not
# useful, see
#   https://lists.gnu.org/archive/html/help-texinfo/2024-03/msg00031.html

# The following adds a <div>.  This is only done for the Top element
# if split.  The opening div is at the same place, right after body open
# if split and non-split.  The div is closed at the end of the document
# if non-split and at the end of the top element before the table of
# contents if split.

# used if split
sub _emacs_texinfo_html_customization_convert_heading_command($$$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $element = shift;
  my $args = shift;
  my $content = shift;

  # div opening is before the Top node, after body open
  if ($cmdname eq 'node' and $element->{'extra'}
      and $element->{'extra'}->{'normalized'} eq 'Top') {
    my $result = &{$self->default_command_conversion($cmdname)}($self,
                     $cmdname, $element, $args, $content);
    return '<div id="content" class="inner">'."\n".$result;
  # div closing is at the end of the top element, before the after_top
  # contents
  } elsif ($cmdname eq 'top') {
    return &{$self->default_command_conversion($cmdname)}($self,
                     $cmdname, $element, $args, $content . "</div>\n");
  }

  # call the default formatting function for other nodes
  return &{$self->default_command_conversion($cmdname)}($self,
                     $cmdname, $element, $args, $content);
}

if (defined(texinfo_get_conf('SPLIT')) and texinfo_get_conf('SPLIT') eq '') {
  # if non-split, the div is closed at the end of the document
  texinfo_set_from_init_file('AFTER_BODY_OPEN',
     '<div id="content" class="inner">'."\n");
  texinfo_set_from_init_file('PRE_BODY_CLOSE', "</div>\n");
} else {
  foreach my $cmdname ('top', 'node') {
    texinfo_register_command_formatting($cmdname,
      \&_emacs_texinfo_html_customization_convert_heading_command);
  }
}

sub _emacs_texinfo_html_customization_format_css_lines($;$)
{
  my $self = shift;
  my $filename = shift;

  return '<style type="text/css">
@import url(\'/software/emacs/manual.css\');
</style>
';
}

texinfo_register_formatting_function('format_css_lines',
     \&_emacs_texinfo_html_customization_format_css_lines);


1;
