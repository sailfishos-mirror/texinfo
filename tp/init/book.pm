# A style that tries to be analogous with a book, in HTML.
#
# This file is in the public domain. Thus it may easily be used as an
# example for further customizations.
#
# Originally written by Patrice Dumas in 2004.
# Modified in 2007, 2008.
#
# This style is based on the scriptbasic style.

use strict;

use vars qw($element_file_name);

texinfo_set_from_init_file('contents', 1);
texinfo_set_from_init_file('CONTENTS_OUTPUT_LOCATION', 'inline');
texinfo_set_from_init_file('USE_TITLEPAGE_FOR_TITLE', 1);

my @book_buttons = ('Back', 'Forward', ' ', 'Contents', 'Index', 'About');

foreach my $buttons ('SECTION_BUTTONS', 'CHAPTER_BUTTONS', 'TOP_BUTTONS') {
  texinfo_set_from_init_file($buttons, \@book_buttons);
}

my @book_footer_buttons = ('Contents', 'Index', 'About');
foreach my $buttons ('MISC_BUTTONS', 'SECTION_FOOTER_BUTTONS',
                     'CHAPTER_FOOTER_BUTTONS') {
  texinfo_set_from_init_file($buttons, \@book_footer_buttons);
}

texinfo_set_from_init_file('NODE_FOOTER_BUTTONS', ['Back', 'Forward']);
texinfo_set_from_init_file('LINKS_BUTTONS',
    ['Top', 'Index', 'Contents', 'About', 'Up', 'NextFile', 'PrevFile']);

texinfo_set_from_init_file('WORDS_IN_PAGE', undef);
texinfo_set_from_init_file('FORMAT_MENU', 'nomenu');
texinfo_set_from_init_file('USE_NODES', undef);

texinfo_set_from_init_file('BIG_RULE', '<hr>');

my ($book_previous_default_filename, $book_previous_file_name,
    $book_unumbered_nr);

sub book_init($)
{
  my $converter = shift;

  $book_previous_default_filename = undef;
  $book_previous_file_name = undef;
  $book_unumbered_nr = 0;
  return 1;
}

texinfo_register_handler('init', \&book_init);

my $NO_BULLET_LIST_CLASS = 'no-bullet';

sub book_print_up_toc($$)
{
  my $converter = shift;
  my $command = shift;

  my $result = '';
  my $current_command = $command;
  my @up_commands;
  while (defined($current_command->{'section_up'})
           and ($current_command->{'section_up'} ne $current_command)
           and defined($current_command->{'section_up'}->{'cmdname'})) {
    unshift (@up_commands, $current_command->{'section_up'});
    $current_command = $current_command->{'section_up'};
  }
  # this happens for example for top tree unit
  return '' if !(@up_commands);
  #print $fh "<ul>" . &$anchor('', $Texi2HTML::HREF{Contents}, '[' . $Texi2HTML::NAME{Contents} . ']') . " <br>\n";
  my $up = shift @up_commands;
#print STDERR "$up $up->{'cmdname'} ".Texinfo::Structuring::_print_root_command_texi($up)."\n";
  $result .= $converter->_attribute_class('ul', $NO_BULLET_LIST_CLASS)."><li>"
  . "<a href=\"".$converter->command_href($up)."\">".$converter->command_text($up)
   . "</a> </li>\n";
  foreach my $up (@up_commands) {
    $result .= '<li>'
    .$converter->_attribute_class('ul', $NO_BULLET_LIST_CLASS)."><li>"
    . "<a href=\"".$converter->command_href($up)."\">".$converter->command_text($up)
   . "</a> </li>\n";
  }
  foreach my $up (@up_commands) {
    $result .= "</ul></li>\n";
  }
  $result .= "</ul>\n";
  return $result;
}

sub book_format_navigation_header($$$$)
{
  my $self = shift;
  my $buttons = shift;
  my $cmdname = shift;
  my $element = shift;

  my $tree_unit = $element->{'parent'};
  if ($tree_unit and $tree_unit->{'extra'}->{'section'}
      and ($tree_unit->{'contents'}->[0] eq $element
          or (!$tree_unit->{'contents'}->[0]->{'cmdname'}
              and $tree_unit->{'contents'}->[1] eq $element))
      and defined($tree_unit->{'filename'})
      and $self->{'counter_in_file'}->{$tree_unit->{'filename'}} == 1) {
    
    return book_print_up_toc($self, $tree_unit->{'extra'}->{'section'}) .
       &{$self->default_formatting_function('format_navigation_header')}($self,
                                 $buttons, $cmdname, $element);

  } else {
    return &{$self->default_formatting_function('format_navigation_header')}(
                                          $self, $buttons, $cmdname, $element);
  }
}

texinfo_register_formatting_function('format_navigation_header',
                                     \&book_format_navigation_header);

sub book_print_sub_toc($$$);

sub book_print_sub_toc($$$)
{
  my $converter = shift;
  my $parent_command = shift;
  my $command = shift;

  my $result = '';
  my $content_href = $converter->command_href($command);
  my $heading = $converter->command_text($command);
  if ($content_href) {
    $result .= "<li> "."<a href=\"$content_href\">$heading</a>" . " </li>\n";
  }
  if ($command->{'section_childs'} and @{$command->{'section_childs'}}) {
    $result .= '<li>'.$converter->_attribute_class('ul',$NO_BULLET_LIST_CLASS)
     .">\n". book_print_sub_toc($converter, $parent_command,
                                $command->{'section_childs'}->[0])
     ."</ul></li>\n";
  }
  if (exists($command->{'section_next'})) {
    $result .= book_print_sub_toc($converter, $parent_command,
                                  $command->{'section_next'});
  }
  return $result;
}

sub book_convert_heading_command($$$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $element = shift;
  my $args = shift;
  my $content = shift;

  my $result = '';

  # not clear that it may really happen
  if ($self->in_string) {
    $result .= $self->command_string($element) ."\n" if ($cmdname ne 'node');
    $result .= $content if (defined($content));
    return $result;
  }
  my $section = $element->{'extra'}->{'associated_section'};
  my $node;
  if ($section) {
      my $level = $section->{'level'};
      $result .= join('', $self->close_registered_sections_level($level));
      $self->register_opened_section_level($level, "</div>\n");
  } else {
      $node = $element->{'extra'}->{'associated_node'};
  }
  $result .= '<div';
  if ($section) {
      $result .= ' class="'.$section->{'cmdname'}.'"';
  } elsif ($node) {
      $result .= ' class="node"';
  } else {
      $result .= " class=\"$cmdname\"";
  }
  my $element_id = $self->command_id($element);
  $result .= " id=\"$element_id\""
      if (defined($element_id) and $element_id ne '');
  $result .= ">\n";

  print STDERR "Process $element "
        .Texinfo::Structuring::_print_root_command_texi($element)."\n"
          if ($self->get_conf('DEBUG'));
  my $tree_unit;
  if ($Texinfo::Common::root_commands{$element->{'cmdname'}}
      and $element->{'parent'}
      and $element->{'parent'}->{'type'}
      and $element->{'parent'}->{'type'} eq 'unit') {
    $tree_unit = $element->{'parent'};
  }
  if ($tree_unit) {
    $result .= &{$self->{'format_element_header'}}($self, $cmdname,
                                            $element, $tree_unit);
  }

  my $heading_level;
  my $cmdname_for_heading = $cmdname;
  # FIXME this is done as in HTML converter: node is used as heading if there
  # is nothing else.  Is it right?
  if ($cmdname eq 'node') {
    if (!$tree_unit or (!$tree_unit->{'extra'}->{'section'}
                        and $tree_unit->{'extra'}->{'node'}
                        and $tree_unit->{'extra'}->{'node'} eq $element
                        # bogus node may not have been normalized
                        and defined($element->{'extra'}->{'normalized'}))) {
      if ($element->{'extra'}->{'normalized'} eq 'Top') {
        $heading_level = 0;
      } else {
        $heading_level = 3;
      }
    }
  } else {
    $heading_level = $element->{'level'};
    # if the level was changed, set the command name right
    $cmdname_for_heading = $self->_level_corrected_section($element);
  }

  my $heading = $self->command_text($element);
  # $heading not defined may happen if the command is a @node, for example
  # if there is an error in the node.
  if (defined($heading) and $heading ne '' and defined($heading_level)) {

    if ($self->get_conf('TOC_LINKS')
        and $Texinfo::Common::root_commands{$cmdname}
        and $Texinfo::Common::sectioning_commands{$cmdname}) {
      my $content_href = $self->command_contents_href($element, 'contents',
                                        $self->{'current_filename'});
      if ($content_href) {
        $heading = "<a href=\"$content_href\">$heading</a>";
      }
    }

    if ($self->in_preformatted()) {
      $result .= '<strong>'.$heading.'</strong>'."\n";
    } else {
      $result .= &{$self->{'format_heading_text'}}($self, $cmdname_for_heading,
                                           $heading, $heading_level, $element);
    }
  }
  if ($element->{'section_childs'} and @{$element->{'section_childs'}}
      and $cmdname ne 'top') {
    $result .= $self->_attribute_class('ul', $NO_BULLET_LIST_CLASS).">\n";
    $result .= book_print_sub_toc($self, $element,
                                  $element->{'section_childs'}->[0]);
    $result .= "</ul>\n";
  }
  $result .= $content if (defined($content));
  $result .= '</div>' if (! $section);
  return $result;
}

foreach my $command (keys(%Texinfo::Common::sectioning_commands), 'node') {
  texinfo_register_command_formatting($command,
                                \&book_convert_heading_command);
}

sub book_element_file_name($$$)
{
  my $converter = shift;
  my $element = shift;
  my $filename = shift;

  return undef if (!$converter->get_conf('SPLIT'));

  if (defined($book_previous_default_filename)
      and ($filename eq $book_previous_default_filename)) {
    return $book_previous_file_name;
  }

  my $prefix = $converter->{'document_name'};
  my $new_file_name;
  my $command = $element->{'extra'}->{'section'};
  return undef unless ($command);
  if ($converter->element_is_tree_unit_top($element)) {
    $new_file_name = "${prefix}_top.html";
  } elsif (defined($command->{'number'}) and ($command->{'number'} ne '')) {
    my $number = $command->{'number'};
    $number .= '.' unless ($number =~ /\.$/);
    $new_file_name = "${prefix}_$number" . 'html';
  } else {
    $book_unumbered_nr++;
    $new_file_name = "${prefix}_U." . $book_unumbered_nr . '.html';
  }
  $book_previous_default_filename = $filename;
  $book_previous_file_name = $new_file_name;
  return $new_file_name;
}

$element_file_name = \&book_element_file_name;

1;
