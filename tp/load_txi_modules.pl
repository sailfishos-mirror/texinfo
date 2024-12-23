#! /usr/bin/env perl

# load_txi_modules: Load Texinfo modules for embedding Perl.
#
# Copyright 2010-2024 Free Software Foundation, Inc.
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
#
# Trimmed down texi2any.pl that is used to load the modules when
# Perl code is directly called from C and no Perl script is run.

use 5.006;

use strict;

use warnings;

# Through rules in Makefile.am, directory paths set through configure are
# substituted directly in strings in the code, for example
#   my $datadir = '@datadir@';
# We always use these strings as byte string, therefore we explicitly
# set no utf8 to be sure that strings in code will never be considered as
# character strings by Perl.
no utf8;

# check that autovivification do not happen incorrectly.
#no autovivification qw(fetch delete exists store strict);

# for file names portability
use File::Spec;
# for dirname and fileparse
use File::Basename;

my ($real_command_name, $command_directory, $command_suffix);

# This big BEGIN block deals with finding modules and
# some dependencies that we ship
# * in source or
# * installed or
# * installed relative to the script
BEGIN
{
  ($real_command_name, $command_directory, $command_suffix)
     = fileparse($0, '.pl');
  my $updir = File::Spec->updir();

  # These are substituted by the Makefile to create "texi2any".
  my $datadir = '@datadir@';
  my $converter = '@CONVERTER@';
  my $libdir = '@libdir@';
  my $xsdir;

  if ($datadir eq '@' .'datadir@'
      or defined($ENV{'TEXINFO_DEV_SOURCE'})
         and $ENV{'TEXINFO_DEV_SOURCE'} ne '0')
  {
    # Use uninstalled modules

    # To find Texinfo::ModulePath
    if (defined($ENV{'top_builddir'})) {
      unshift @INC, join('/', ($ENV{'top_builddir'}, 'tp'));
    } else {
      unshift @INC, $command_directory;
    }

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init(undef, undef, undef, 'updirs' => 1);
  } else {
    # Look for modules in their installed locations.
    my $modules_dir = join('/', ($datadir, $converter));
    # look for package data in the installed location.
    # actually the same as $converterdatadir in main program below, but use
    # another name to avoid confusion.
    my $modules_converterdatadir = $modules_dir;
    $xsdir = join('/', ($libdir, $converter));

    # try to make package relocatable, will only work if
    # standard relative paths are used
    if (! -f join('/', ($modules_dir, 'Texinfo', 'Parser.pm'))
        and -f join('/', ($command_directory, $updir, 'share',
                          $converter, 'Texinfo', 'Parser.pm'))) {
      $modules_dir = join('/', ($command_directory, $updir,
                                'share', $converter));
      $modules_converterdatadir
                  = join('/', ($command_directory, $updir,
                                               'share', $converter));
      $xsdir = join('/', ($command_directory, $updir,
                                          'lib', $converter));
    }

    unshift @INC, $modules_dir;

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init($modules_dir, $xsdir,
                              $modules_converterdatadir,
                              'installed' => 1);
  }
} # end BEGIN

BEGIN {
  # important to load early to set XS embedded before loading any
  # package loading XS modules
  use Texinfo::XSLoader;
  Texinfo::XSLoader::set_XS_embedded();
  my $enable_xs = '@enable_xs@';
  if ($enable_xs eq 'no') {
    die ("Cannot have XS disabled and embedding Perl\n");
  }
}

use Locale::Messages;
use Texinfo::Common;
use Texinfo::Config;
use Texinfo::Report;

# Paths and file names
#my $curdir = File::Spec->curdir();
#my $updir = File::Spec->updir();

# set by configure, prefix for the sysconfdir and so on
# This could be used in the eval
my $prefix = '@prefix@';
my $datadir;
my $datarootdir;
my $sysconfdir;
#my $pkgdatadir;
my $converter;

# the result is not good when using rootdir, maybe using a concatenation
# of rootdir would be better.
#my $fallback_prefix = join('/', (File::Spec->rootdir(), 'usr', 'local'));
my $fallback_prefix = File::Spec->catdir(File::Spec->rootdir(), 'usr', 'local');

# We need to eval as $prefix has to be expanded. However when we haven't
# run configure @sysconfdir will be expanded as an array, thus we verify
# whether configure was run or not
if ('@sysconfdir@' ne '@' . 'sysconfdir@') {
  $sysconfdir = eval '"@sysconfdir@"';
} else {
  $sysconfdir = "$fallback_prefix/etc";
}

if ('@datarootdir@' ne '@' . 'datarootdir@') {
  $datarootdir = eval '"@datarootdir@"';
} else {
  $datarootdir = "$fallback_prefix/share";
}

if ('@datadir@' ne '@' . 'datadir@' and '@PACKAGE@' ne '@' . 'PACKAGE@') {
  $datadir = eval '"@datadir@"';
  my $package = '@PACKAGE@';
  $converter = '@CONVERTER@';
} else {
  $datadir = "$fallback_prefix/share";
  $converter = 'texi2any';
}

# initial setup of messages internalisation framework
# work-around in case libintl-perl do not do it itself
# see http://www.gnu.org/software/gettext/manual/html_node/The-LANGUAGE-variable.html#The-LANGUAGE-variable

if ((defined($ENV{"LC_ALL"}) and $ENV{"LC_ALL"} =~ /^(C|POSIX)$/)
     or (defined($ENV{"LANG"}) and $ENV{"LANG"} =~ /^(C|POSIX)$/)) {
  delete $ENV{"LANGUAGE"} if defined($ENV{"LANGUAGE"});
}

#my $messages_textdomain = 'texinfo';
my $messages_textdomain = '@PACKAGE@';
$messages_textdomain = 'texinfo' if ($messages_textdomain eq '@'.'PACKAGE@');
my $strings_textdomain = '@PACKAGE@' . '_document';
$strings_textdomain = 'texinfo_document'
   if ($strings_textdomain eq '@'.'PACKAGE@' . '_document');

# we want a reliable way to switch locale, so we don't use the system
# gettext.
Locale::Messages->select_package('gettext_pp');

# Note: this uses installed messages even when the program is uninstalled
Locale::Messages::bindtextdomain($messages_textdomain,
                                File::Spec->catdir($datadir, 'locale'));

# Set initial configuration

# Version setting is complicated, because we cope with
# * script with configure values substituted or not
# * script shipped as part of texinfo or as a standalone perl module
#   (although standalone module infrastructure was removed in 2019)

# When the script could be shipped with perl modules independently from
# the remaining of Texinfo, $hardcoded_version was set to undef here
# by a sed one liner.  The consequence is that configure.ac is not used
# to retrieve the version number, version came from Texinfo::Common in that
# case.
# Otherwise this is only used as a safety value, and should never be used
# in practice as a regexp extracts the version from configure.ac.
my $hardcoded_version = "0.00-hardcoded";
# Version set in configure.ac
my $configured_version = '@PACKAGE_VERSION@';
if ($configured_version eq '@' . 'PACKAGE_VERSION@') {
  # if not configured, and $hardcoded_version is set search for the version
  # in configure.ac
  if (defined($hardcoded_version)) {
    if (open(CONFIGURE,
              "< ".File::Spec->catfile($Texinfo::ModulePath::top_srcdir,
                                       'configure.ac'))) {
      while (<CONFIGURE>) {
        if (/^AC_INIT\(\[[^\]]+\]\s*,\s*\[([^\]]+)\]\s*,/) {
          $configured_version = "$1+dev"; # +dev to distinguish from installed
          last;
        }
      }
      close (CONFIGURE);
    }
    # This should never be used, but is a safety value
    $configured_version = $hardcoded_version if (!defined($configured_version));
  } else {
    # was used in the standalone perl module, as $hardcoded_version is undef
    # and it should never be configured in that setup.
    require Texinfo::Common;
    $configured_version = $Texinfo::Common::VERSION;
  }
}

# Compare the version of this file with the version of the modules
# it is using.  If they are different, don't go any further.  This
# can happen if multiple versions of texi2any are installed under a
# different names, e.g. with the --program-suffix option to 'configure'.
# The version in Common.pm is checked because that file has been present
# since Texinfo 5.0 (the first release with texi2any in Perl).
if ($configured_version ne $Texinfo::Common::VERSION
    and $configured_version ne $Texinfo::Common::VERSION."+dev") {
  warn "This is texi2any $configured_version but modules ".
       "for texi2any $Texinfo::Common::VERSION found!\n";
  die "Your installation of Texinfo is broken; aborting.\n";
}

my $configured_package = '@PACKAGE@';
$configured_package = 'texinfo' if ($configured_package eq '@' . 'PACKAGE@');
my $configured_name = '@PACKAGE_NAME@';
$configured_name = 'GNU Texinfo'
  if ($configured_name eq '@' .'PACKAGE_NAME@');
my $configured_name_version = "$configured_name $configured_version";
my $configured_url = '@PACKAGE_URL@';
$configured_url = 'https://www.gnu.org/software/texinfo/'
  if ($configured_url eq '@' .'PACKAGE_URL@');

my $configured_information = {
    'PACKAGE_VERSION' => $configured_version,
    'PACKAGE' => $configured_package,
    'PACKAGE_NAME' => $configured_name,
    'PACKAGE_AND_VERSION' => $configured_name_version,
    'PACKAGE_URL' => $configured_url,
};

# set configure information as constants
foreach my $configured_variable (keys(%$configured_information)) {
  Texinfo::Common::set_build_constant($configured_variable,
                       $configured_information->{$configured_variable});
  # set also with _CONFIG prepended, as in C code.
  Texinfo::Common::set_build_constant($configured_variable.'_CONFIG',
                       $configured_information->{$configured_variable});
}

# next three modules are basic and used in call_perl_function.c
use Texinfo::Translations;
use Texinfo::Convert::NodeNameNormalization;
use Texinfo::Indices;

if ($Texinfo::ModulePath::texinfo_uninstalled) {
  my $locales_dir = File::Spec->catdir($Texinfo::ModulePath::tp_builddir,
                                       'LocaleData');
  if (-d $locales_dir) {
    Texinfo::Translations::configure($locales_dir, $strings_textdomain);
  } else {
    warn "Locales dir for document strings not found\n";
  }
} else {
  Texinfo::Translations::configure(File::Spec->catdir($datadir, 'locale'),
                              $strings_textdomain);
}

# useful modules the user can always assume to have.
use Texinfo::ManipulateTree;
use Texinfo::Document;
use Texinfo::Convert::Texinfo;
use Texinfo::Convert::Utils;

#print STDERR "$0 has run\n";

1;
