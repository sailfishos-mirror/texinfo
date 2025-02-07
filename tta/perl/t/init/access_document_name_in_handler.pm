
use strict;

my $document_name;

sub _button_show_document_name($)
{
  my $self = shift;
  #print STDERR "CURENT_UNIT ".$self->current_output_unit()."\n";
  return $document_name, 1;
}

# avoid doing twice if there are more than one manual processed
my $button_added;
sub _texi2any_tests_access_document_name_in_handler
{
  my ($self, $document, $stage) = @_;

  $document_name = $self->get_info('document_name');

  #print STDERR "AAA $document_name\n";

  if (!$button_added) {
    my @section_buttons = @{$self->get_conf('SECTION_BUTTONS')};
    push @section_buttons, ('Space', \&_button_show_document_name);
    $self->set_conf('SECTION_BUTTONS', \@section_buttons);
    $button_added = 1;
  }
  return 0;
}

texinfo_register_handler('structure',
                    \&_texi2any_tests_access_document_name_in_handler);

1;
