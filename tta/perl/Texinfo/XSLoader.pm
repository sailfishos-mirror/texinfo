# Copyright 2014-2025 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

package Texinfo::XSLoader;

use 5.006;
use strict;
use warnings;

use DynaLoader;

#use version;

BEGIN {
  eval 'require Texinfo::ModulePath';
  if ($@ ne '') {
    # For configure test in CheckXS where Texinfo/ModulePath.pm is
    # not loaded.
    $Texinfo::ModulePath::texinfo_uninstalled = 1;
    $Texinfo::ModulePath::t2a_builddir = '';
  }
}

our $TEXINFO_XS;

our $VERSION = '7.2dev';

# used for comparison with XS_VERSION passed through configure and make.
# The github CI adds the date after a hyphen, turn the hyphen to a dot.
my $xs_version = $VERSION;
$xs_version =~ s/-/./g;
$xs_version =~ s/dev$//; # XS bootstrap functions choke on non-numeric version
#my $xs_version = version->declare($VERSION)->numify;

# Set from code to notify that Perl is embedded in C, and that XS needs to
# be used.  When Perl is embedded in C, many computations are done in C and
# are not directly passed to Perl.  These C data should be accessed/modified
# through XS interfaces.  The situation is similar to setting only handlers
# when calling XS methods from Perl, such that the data is not built to Perl,
# the changes are done in C only, at least until Perl structures are explicitly
# required through an XS interface.
our $embedded_xs;

sub set_XS_embedded {
  $embedded_xs = 1;
}

sub XS_parser_enabled {
  return ($embedded_xs or
          ((not defined($ENV{TEXINFO_XS})
            or $ENV{TEXINFO_XS} ne 'omit')
           and (not defined($ENV{TEXINFO_XS_PARSER})
                or $ENV{TEXINFO_XS_PARSER} eq '1')));
}

sub XS_structuring_enabled {
  return ($embedded_xs or
          (XS_parser_enabled()
           and (not defined($ENV{TEXINFO_XS_STRUCTURE})
                or $ENV{TEXINFO_XS_STRUCTURE} ne '0')));
}

sub XS_convert_enabled {
  return ($embedded_xs or
          (XS_structuring_enabled()
            and (not defined $ENV{TEXINFO_XS_CONVERT}
                 or $ENV{TEXINFO_XS_CONVERT} ne '0')));
}


our $disable_XS;

# For verbose information about what's being done
sub _debug($) {
  my $msg = shift;
  if ($TEXINFO_XS eq 'debug') {
    warn $msg . "\n";
  }
}

# For messages to say that XS module couldn't be loaded
sub _fatal($) {
  my $msg = shift;
  if ($TEXINFO_XS eq 'debug'
      or $TEXINFO_XS eq 'required'
      or $TEXINFO_XS eq 'warn'
      or $embedded_xs) {
    warn $msg . "\n";
  }
}

# We look for the .la and .so files in @INC because this allows us to override
# which modules are used using -I flags to "perl".
sub _find_file($) {
  my $file = shift;
  for my $dir (@INC) {
    next if (ref($dir) ne '');
    _debug("checking $dir/$file");
    if (-f "$dir/$file") {
      _debug("found $dir/$file");
      return ($dir, "$dir/$file");
    }
  }
  return undef;
}

my $added_converterxsdir;
my %dl_path_prepended_dirs;

# If $TRY_DIRECT_LOAD is set and no .la file is found in @INC, add
# the converterxsdir directory to the DynaLoader path and let DynaLoader
# find the module file using the usual file names.
# This allows to have modules found even if packagers remove .la files
# installed in the default case on platforms where modules have usual names
# and are found by DynaLoader.
sub load_libtool_library {
  my ($module_name, $try_direct_load) = @_;

  my $dlname;

  my ($libtool_dir, $libtool_archive) = _find_file("$module_name.la");
  if (!$libtool_archive) {
    if (!$try_direct_load) {
      _fatal("$module_name: couldn't find Libtool archive file");
      return 0;
    } else {
      $dlname = $module_name;
      if (!defined($added_converterxsdir)
          and defined($Texinfo::ModulePath::converterxsdir)) {
        $added_converterxsdir = $Texinfo::ModulePath::converterxsdir;
        unshift @DynaLoader::dl_library_path, $added_converterxsdir;
      }
      _debug("try direct load $module_name: $added_converterxsdir");
    }
  } else {
    my $fh;
    open $fh, $libtool_archive;
    if (!$fh) {
      _fatal("$module_name: couldn't open Libtool archive file");
      return 0;
    }

    # Look for the line in *.la giving the name of the loadable object.
    while (my $line = <$fh>) {
      if ($line =~ /^\s*dlname\s*=\s*'([^']+)'\s$/) {
        $dlname = $1;
        last;
      }
    }
    if (!defined($dlname) or $dlname eq '') {
      _fatal("$module_name: couldn't find name of shared object");
      return 0;
    }

    # Use unshift to place directories at start of search path.  This
    # way we avoid accidentally loading the wrong library, e.g. if someone
    # has some random /usr/lib/libtexinfo.so file.
    # The *.so file is under .libs in the build directory.
    # Consider that we are in the build directory if texinfo_uninstalled
    # is set, or if Texinfo::ModulePath has not been called, as is the
    # case when TestXS is called, as it is not called from a Perl script.
    if (not defined($Texinfo::ModulePath::texinfo_uninstalled)
        or $Texinfo::ModulePath::texinfo_uninstalled) {
      if (!$dl_path_prepended_dirs{"$libtool_dir/.libs"}) {
        unshift @DynaLoader::dl_library_path, "$libtool_dir/.libs";
      }
    }
    if (!$dl_path_prepended_dirs{$libtool_dir}) {
      unshift @DynaLoader::dl_library_path, $libtool_dir;
    }
  }

  my @found_files = DynaLoader::dl_findfile($dlname);
  if (scalar(@found_files) == 0) {
    _fatal("$module_name: couldn't find $dlname");
    return 0;
  }
  my $dlpath = $found_files[0];

  #my $flags = dl_load_flags $module; # This is 0 in DynaLoader
  my $flags = 0;
  my $libref = DynaLoader::dl_load_file($dlpath, $flags);
  if (!defined($libref)) {
    my $message = DynaLoader::dl_error();
    _fatal("$module_name: couldn't load file $dlpath: $message");
    return 0;
  }
  _debug("$dlpath loaded");
  push @DynaLoader::dl_shared_objects, $dlpath; # record files loaded

  my @undefined_symbols = DynaLoader::dl_undef_symbols();
  if (scalar(@undefined_symbols) != 0) {
    _fatal("$module_name: still have undefined symbols after dl_load_file");
  }
  return $libref;
}

our $loaded_additional_libraries = {};

# Load module $MODULE, either from XS implementation in
# Libtool file $MODULE_NAME and Perl file $PERL_EXTRA_FILE,
# or non-XS implementation $FALLBACK_MODULE.
# The package loaded is returned or undef if there is no fallback and the
# XS package was not loaded.
sub init {
  my ($module,
     $fallback_module,
     $module_name,
     $perl_extra_file,
     $additional_libraries,
   ) = @_;

  # Possible values for TEXINFO_XS environment variable:
  #
  # TEXINFO_XS=omit         # don't try loading xs at all
  # TEXINFO_XS=default      # try xs, silent fallback
  # TEXINFO_XS=warn         # try xs, warn on failure
  # TEXINFO_XS=required     # try xs, abort if not loadable, no fallback
  # TEXINFO_XS=debug        # try xs, voluminuous debugging, fallback
  #
  # Other values are treated at the moment as 'default'.

  $TEXINFO_XS = $ENV{'TEXINFO_XS'};
  if (!defined($TEXINFO_XS)) {
    $TEXINFO_XS = '';
  }

  if ($embedded_xs and $TEXINFO_XS eq 'omit') {
    warn "ignoring TEXINFO_XS environment variable set to 'omit' ".
         "for embedded Perl\n";
    $ENV{'TEXINFO_XS'} = '';
    $TEXINFO_XS = '';
  }

  if ($TEXINFO_XS eq 'omit') {
    # Don't try to use the XS module
    goto FALLBACK;
  }

  if ($disable_XS) {
    _fatal("use of XS modules was disabled when Texinfo was built");
    goto FALLBACK;
  }

  if (!$module_name) {
    goto FALLBACK;
  }

  # Consider that we are in the build directory if texinfo_uninstalled
  # is set, or if Texinfo::ModulePath has not been called, as is the
  # case when TestXS is called, as it is not called from a Perl script.
  my $uninstalled = (not defined($Texinfo::ModulePath::texinfo_uninstalled)
                     or $Texinfo::ModulePath::texinfo_uninstalled);

  if ($additional_libraries) {
    for my $additional_library_name (@{$additional_libraries}) {
      my $additional_library = 'lib' . $additional_library_name;
      if (!$loaded_additional_libraries->{$additional_library}) {
        my $ref = load_libtool_library($additional_library);
        # if the libraries are installed but .la were removed, in general
        # they will be found as there are RUNPATH or similar pointing
        # to the installation directory in the XS modules objects themselves,
        # so we only fallback if the libraries are not found and we are
        # in-source.
        if (!$ref and $uninstalled) {
          goto FALLBACK;
        } else {
          $loaded_additional_libraries->{$additional_library} = $ref;
        }
      }
    }
  }

  # If installed, try direct load of modules if .la file is not found, as
  # it should in general work in that case.
  my $libref = load_libtool_library($module_name, !$uninstalled);
  if (!$libref) {
    goto FALLBACK;
  }

  my $bootname = "boot_$module";
  $bootname =~ s/:/_/g;
  _debug("looking for $bootname");
  my $symref = DynaLoader::dl_find_symbol($libref, $bootname);
  if (!defined($symref)) {
    _fatal("$module_name: couldn't find $bootname symbol");
    goto FALLBACK;
  }
  _debug("trying to call $bootname...");
  my $boot_fn = DynaLoader::dl_install_xsub("${module}::bootstrap",
                                                  $symref); #, $dlname);

  if (!defined($boot_fn)) {
    _fatal("$module_name: couldn't bootstrap");
    goto FALLBACK;
  }
  _debug("  ...succeeded");

  # This is the module bootstrap function, which causes all the other
  # functions (XSUB's) provided by the module to become available to
  # be called from Perl code, after a check that the version argument
  # matches the XS object XS_VERSION value.  In our case, XS_VERSION
  # is set based on tta/configure.ac AC_INIT version passed
  # through Makefile.am.  The tta/configure.ac AC_INIT version
  # and the Perl modules VERSION should be synchronized with the top-level
  # configure.ac version.  The check therefore ensures that the XS objects
  # and the Perl module come from the same GNU Texinfo distribution.
  #print STDERR "REMARK: XS version: $xs_version\n";
  &$boot_fn($module, $xs_version);

  # This makes it easier to refer to packages and symbols by name.
  no strict 'refs';

  if (defined &{"${module}::init"}
      and !&{"${module}::init"} ($Texinfo::ModulePath::texinfo_uninstalled,
                                 $Texinfo::ModulePath::converterdatadir,
                                 $Texinfo::ModulePath::t2a_builddir,
                                 $Texinfo::ModulePath::t2a_srcdir)) {
    _fatal("$module_name: error initializing");
    goto FALLBACK;
  }

  if ($perl_extra_file) {
    eval "require $perl_extra_file";
    if ($@) {
      warn();
      die "Error loading $perl_extra_file\n";
    }
  }

  return $module;

 FALLBACK:
  if ($TEXINFO_XS eq 'required') {
    die "set the TEXINFO_XS environment variable to 'omit' to use the "
       ."pure Perl modules\n";
  } elsif ($embedded_xs) {
    die "Perl is embedded, unexpected failure loading $module XS, aborting\n";
  } elsif ($TEXINFO_XS eq 'warn' or $TEXINFO_XS eq 'debug') {
    if (defined($fallback_module)) {
      warn "falling back to pure Perl module $fallback_module\n";
    }
  }
  # if there is no fallback, it may be relevant to have access to the
  # return value in perl code, to check if the package was loaded.
  if (!defined $fallback_module) {
    if ($TEXINFO_XS eq 'warn' or $TEXINFO_XS eq 'debug') {
      warn "no fallback module for $module\n";
    }
    return undef;
  }

  # Fall back to using the Perl code.
  # Note that if no import method can be found, then the call is skipped (this
  # special case is described in perldoc use), therefore the fallback module
  # does not need to implement import().
  # Use eval here to interpret :: properly in module name.
  eval "require $fallback_module; $module->import();";
  if ($@) {
    warn();
    die "Error loading $fallback_module\n";
  }

  return  $fallback_module;
} # end init

# Override subroutine $TARGET with $SOURCE.
sub override {
  my ($target, $source) = @_;

  _debug("attempting to override $target with $source...");

  no strict 'refs'; # access modules and symbols by name.
  no warnings 'redefine'; # do not warn about redefining a function.

  if (defined &{"${source}"}) {
    *{"${target}"} = \&{"${source}"};
    _debug("  ...succeeded");
  } else {
    _debug("  ...failed");
  }
}


1;
__END__
