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
texinfo_set_from_init_file('USE_NODES', 0);

texinfo_set_from_init_file('BIG_RULE', '<hr>');

#texinfo_set_from_init_file('DOCTYPE',
# '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">');

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
  while (defined($current_command->{'structure'}->{'section_up'})
           and ($current_command->{'structure'}->{'section_up'} ne $current_command)
           and defined($current_command->{'structure'}->{'section_up'}->{'cmdname'})) {
    unshift (@up_commands, $current_command->{'structure'}->{'section_up'});
    $current_command = $current_command->{'structure'}->{'section_up'};
  }
  # this happens for example for top tree unit
  return '' if !(@up_commands);
  #print $fh "<ul>" . &$anchor('', $Texi2HTML::HREF{Contents}, '[' . $Texi2HTML::NAME{Contents} . ']') . " <br>\n";
  my $up = shift @up_commands;
  #print STDERR "$up ".Texinfo::Convert::Texinfo::root_element_command_to_texinfo($up)."\n";
  $result .= $converter->html_attribute_class('ul', $NO_BULLET_LIST_CLASS)."><li>"
  . "<a href=\"".$converter->command_href($up)."\">".$converter->command_text($up)
   . "</a> </li>\n";
  foreach my $up (@up_commands) {
    $result .= '<li>'
    .$converter->html_attribute_class('ul', $NO_BULLET_LIST_CLASS)."><li>"
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

  my $tree_unit = $element->{'structure'}->{'associated_unit'};
  if ($tree_unit and $tree_unit->{'extra'}->{'unit_command'}
      and not $tree_unit->{'extra'}->{'unit_command'}->{'cmdname'} eq 'node'
      and ($tree_unit->{'contents'}->[0] eq $element
          or (!$tree_unit->{'contents'}->[0]->{'cmdname'}
              and $tree_unit->{'contents'}->[1] eq $element))
      # FIXME API
      and defined($tree_unit->{'unit_filename'})
      and $self->{'counter_in_file'}->{$tree_unit->{'unit_filename'}} == 1) {
    
    return book_print_up_toc($self, $tree_unit->{'extra'}->{'unit_command'}) .
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
  if ($command->{'structure'}->{'section_childs'}
      and @{$command->{'structure'}->{'section_childs'}}) {
    $result .= '<li>'.$converter->html_attribute_class('ul',$NO_BULLET_LIST_CLASS)
     .">\n". book_print_sub_toc($converter, $parent_command,
                                $command->{'structure'}->{'section_childs'}->[0])
     ."</ul></li>\n";
  }
  if (exists($command->{'structure'}->{'section_next'})) {
    $result .= book_print_sub_toc($converter, $parent_command,
                                  $command->{'structure'}->{'section_next'});
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

  my $element_id = $self->command_id($element);
  my $section;
  if ($cmdname eq 'node' and $element->{'extra'}->{'associated_section'}) {
    $section = $element->{'extra'}->{'associated_section'};
  } elsif ($cmdname ne 'node'
           and not $element->{'extra'}->{'associated_node'}
           # to avoid *heading* @-commands
           and $Texinfo::Common::root_commands{$cmdname}) {
    $section = $element;
  }

  print STDERR "Process $element "
        .Texinfo::Convert::Texinfo::root_element_command_to_texinfo($element)."\n"
          if ($self->get_conf('DEBUG'));
  my $tree_unit;
  if ($Texinfo::Common::root_commands{$element->{'cmdname'}}
      and $element->{'structure'}->{'associated_unit'}) {
    $tree_unit = $element->{'structure'}->{'associated_unit'};
  }
  my $element_header = '';
  if ($tree_unit) {
    $element_header = &{$self->{'format_element_header'}}($self, $cmdname,
                                            $element, $tree_unit);
  }

  # if set, the id is associated to the heading text
  my $heading_id;
  if ($section) {
    my $level = $section->{'structure'}->{'section_level'};
    $result .= join('', $self->close_registered_sections_level($level));
    $self->register_opened_section_level($level, "</div>\n");

    $result .= $self->html_attribute_class('div', $section->{'cmdname'});

    $result .= " id=\"$element_id\""
        if (defined($element_id) and $element_id ne '');
    $result .= ">\n";
  } elsif (defined($element_id) and $element_id ne '') {
    if ($element_header ne '') {
      # case of a @node without sectioning command and with a header.
      # put the anchor element before the header
      $result .= &{$self->{'format_separate_anchor'}}($self, $element_id,
                                                     "${cmdname}-anchor");
    } else {
      $heading_id = $element_id;
    }
  }

  $result .= $element_header;

  my $heading_level;
  my $cmdname_for_heading = $cmdname;
  # node is used as heading if there is nothing else.
  if ($cmdname eq 'node') {
    # FIXME what to do if the $tree_unit extra does not contain any
    # unit_command, but tree_unit is defined (it can contain only 'first_in_page')
    if ((!$tree_unit # or !$tree_unit->{'extra'}
         # or !$tree_unit->{'extra'}->{'unit_command'}
         or ($tree_unit->{'extra'}->{'unit_command'}
             and $tree_unit->{'extra'}->{'unit_command'} eq $element
             and $tree_unit->{'extra'}->{'unit_command'}->{'cmdname'} eq 'node'
             and not $tree_unit->{'extra'}->{'unit_command'}->{'extra'}->{'associated_section'}))
        and defined($element->{'extra'}->{'normalized'})) {
      if ($element->{'extra'}->{'normalized'} eq 'Top') {
        $heading_level = 0;
      } else {
        $heading_level = 3;
      }
    }
  } elsif (defined $element->{'structure'}->{'section_level'}) {
    $heading_level = $element->{'structure'}->{'section_level'};
    # if the level was changed, set the command name right
    $cmdname_for_heading
      = Texinfo::Structuring::section_level_adjusted_command_name($element);
  } else {
    # for *heading* @-commands which do not have a level
    # in the document as they are not associated with the
    # sectioning tree, but still have a $heading_level
    $heading_level = Texinfo::Structuring::section_level($element);
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
      my $id_str = '';
      if (defined($heading_id)) {
        $id_str = " id=\"$heading_id\"";
      }
      $result .= "<strong${id_str}>".$heading.'</strong>'."\n";
    } else {
      $result .= &{$self->{'format_heading_text'}}($self, $cmdname_for_heading,
              $heading, $heading_level +$self->get_conf('CHAPTER_HEADER_LEVEL') -1,
                                              $element, $heading_id);
    }
  } elsif (defined($heading_id)) {
    # case of a lone node and no header, and case of an empty @top
    $result .= &{$self->{'format_separate_anchor'}}($self, $heading_id,
                                                 "${cmdname}-anchor");
  }

  if ($element->{'structure'}->{'section_childs'}
      and @{$element->{'structure'}->{'section_childs'}}
      and $cmdname ne 'top') {
    $result .= $self->html_attribute_class('ul', $NO_BULLET_LIST_CLASS).">\n";
    $result .= book_print_sub_toc($self, $element,
                                  $element->{'structure'}->{'section_childs'}->[0]);
    $result .= "</ul>\n";
  }
  $result .= $content if (defined($content));
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
  my $command;
  if ($element->{'extra'}->{'unit_command'}) {
    if ($element->{'extra'}->{'unit_command'}->{'cmdname'} ne 'node') {
      $command = $element->{'extra'}->{'unit_command'};
    } elsif ($element->{'extra'}->{'unit_command'}->{'extra'}->{'associated_section'}) {
      $command = $element->{'extra'}->{'unit_command'}->{'extra'}->{'associated_section'};
    }
  }
  return undef unless ($command);
  if ($converter->element_is_tree_unit_top($element)) {
    $new_file_name = "${prefix}_top.html";
  } elsif (defined($command->{'structure'}->{'section_number'})
           and ($command->{'structure'}->{'section_number'} ne '')) {
    my $number = $command->{'structure'}->{'section_number'};
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
