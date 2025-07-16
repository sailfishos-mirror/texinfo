use strict;

use Test::More; 

plan tests => 1;

BEGIN {
  # to find Texinfo.pm
  my $srcdir = $ENV{'srcdir'};
  if (defined($srcdir)) {
    unshift @INC, $srcdir;
  }
  # To find the XS extension
  my $t2a_builddir = $ENV{'t2a_builddir'};
  if (!defined($t2a_builddir) and defined($srcdir)) {
    my $updir = File::Spec->updir();
    # this is correct for in-source builds only.
    $t2a_builddir = join('/', ($srcdir, $updir, $updir));
  }
  if (defined($t2a_builddir)) {
    unshift @INC, join('/', ($t2a_builddir, 'swig', 'perl', '.libs'));
  }
}

use Texinfo;

Texinfo::setup(1);

ok(1, 'modules loading');

