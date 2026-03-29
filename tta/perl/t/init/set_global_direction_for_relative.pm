use strict;

texinfo_register_global_direction('NodeNext', 'Top');

texinfo_register_text_direction('NodeUp');

sub _set_global_direction_to_relative() {
  my ($self, $document, $stage) = @_;

  $self->set_global_direction('Forward', 'Top');
  return 0;
}

texinfo_register_handler('setup',
            \&_set_global_direction_to_relative);

1;
