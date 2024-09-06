#+##############################################################################
#
# latex2html.pm: interface to LaTeX2HTML
#
#    Copyright (C) 1999, 2000, 2003, 2005, 2006, 2009, 2011-2023
#                  Free Software Foundation, Inc.
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
# This code was taken from the main texi2html file in 2006.
# Certainly originally written by Olaf Bachmann.
# Adapted from texi2html T2h_l2h.pm in 2011.
#
#-##############################################################################

use 5.006;
use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Cwd;
use File::Copy;
use File::Spec;

use Encode qw(encode);

# also for __(
use Texinfo::Common;
use Texinfo::Convert::Texinfo;
# to implement CONVERT_TO_LATEX_IN_MATH
use Texinfo::Convert::LaTeX;

texinfo_register_handler('structure', \&l2h_process);
texinfo_register_handler('finish', \&l2h_finish);

texinfo_register_command_formatting('math', \&l2h_convert_command);
texinfo_register_command_formatting('tex', \&l2h_convert_command);
texinfo_register_command_formatting('latex', \&l2h_convert_command);
texinfo_register_command_formatting('displaymath', \&l2h_convert_command);

# name/location of latex2html program
texinfo_set_from_init_file('L2H_L2H', 'latex2html');

# If this is set the actual call to latex2html is skipped. The previously
# generated content is reused, instead.
# If set to 0, the cache is not used.
# If undef the cache is used for as many tex fragments as possible
# and for the remaining the command is run.
texinfo_set_from_init_file('L2H_SKIP', undef);

# If this is set l2h uses the specified directory for temporary files. The path
# leading to this directory may not contain a dot (i.e., a ".");
# otherwise, l2h will fail.
texinfo_set_from_init_file('L2H_TMP', '');

# If set, l2h uses the file as latex2html init file
texinfo_set_from_init_file('L2H_FILE', undef);

# if this is set the intermediate files generated by texi2html in relation with
# latex2html are cleaned (they all have the prefix <document name>_l2h_).
texinfo_set_from_init_file('L2H_CLEAN', 1);


# latex2html conversions consist of 2 stages:
# 1) l2h_process
#    to latex: Put "latex" code into a latex file
#                    (l2h_to_latex)
#    to html: Use latex2html to generate corresponding html code and images
#                    (l2h_to_html)
#    from html: Extract generated code and images from latex2html run
#                    (l2h_retrieve_from_html)
# 2) l2h_convert_command called each time an handled @-command (@math, ...) is
#               encountered in the tree conversion.

my ($l2h_name, $l2h_cache_path_name);

my $debug;
my $verbose;
my $destination_directory;
my $destination_directory_string;
my $docu_name;

my %commands_counters;
my %commands_text_index;

my %commands_ignored;

my $extract_error_count;
my $invalid_text_index_count;

# change_image_file_names
my %l2h_img;
my $image_count;

my $html_output_count;

##########################
#
# First stage: Generation of Latex file

sub l2h_to_latex($$$$$)
{
  my $self = shift;
  my $l2h_latex_path_string = shift;
  my $l2h_latex_path_name = shift;
  my $latex_text_indices_to_convert = shift;
  my $latex_texts = shift;

  unless (open(L2H_LATEX, ">$l2h_latex_path_string")) {
    $self->converter_document_error(sprintf(__(
          "l2h: could not open latex file %s for writing: %s"),
                                  $l2h_latex_path_name, $!));
    return 0;
  }
  # according to the .log file latex2html is expecting utf-8 if no information
  # is provided
  binmode(L2H_LATEX, ':utf8');
  warn "# l2h: use $l2h_latex_path_string as latex file\n" if ($verbose);
  print L2H_LATEX <<EOT;
% Automatically generated by Texinfo HTML l2h extension
% DO NOT EDIT !!!
\\documentclass{article}
\\usepackage{html}
\\begin{document}
EOT

  foreach my $latex_text_index (@$latex_text_indices_to_convert) {
    print L2H_LATEX "\\begin{rawhtml}\n\n";
    print L2H_LATEX "<!-- l2h_begin $l2h_name $latex_text_index -->\n";
    print L2H_LATEX "\\end{rawhtml}\n";

    print L2H_LATEX "$latex_texts->[$latex_text_index]\n";

    print L2H_LATEX "\\begin{rawhtml}\n";
    print L2H_LATEX "<!-- l2h_end $l2h_name $latex_text_index -->\n\n";
    print L2H_LATEX "\\end{rawhtml}\n";
  }
  # print closing into latex file and close it
  print L2H_LATEX '\end{document}'."\n";
  # FIXME error condition not checked
  close (L2H_LATEX);
  return 1;
}

my $latex_commands_count;
my @latex_texts;
my $latex_texts_count;
my $latex_to_convert_count;
my $latex_converted_count;
my $html_converted_count;

# our because the file lexicals are not visible in the do loading the cache
our %l2h_cache;
my @l2h_from_html;

sub l2h_process($$)
{
  my $self = shift;
  my $document = shift;

  my $document_root = $document->tree();

  @latex_texts = ();           # array used to associate the index with
                               # a latex text.
  $latex_commands_count = undef;
                               # number of latex Texinfo commands collected
  $latex_texts_count = 0;      # number of latex texts stored, two same text
                               # are only stored once
  $latex_to_convert_count = 0; # number of latex texts that should pass through
                               # latex2html
  $latex_converted_count = 0;  # number of latex texts passed through latex2html
  $html_converted_count = 0;   # number of html texts retrieved
  %l2h_cache = ();             # the cache hash. Associate latex text with
                               # html from the previous run
  @l2h_from_html = ();         # array of resulting html

  %commands_counters = ();     # associate an element to the global counter
                               # of processed elements
  %commands_text_index = ();   # associate an element to the index of latex text,
                               # also the index in the HTML results array
  %commands_ignored = ();      # empty commands not processed.  In general,
                               # should correspond to ignored block commands.
  $extract_error_count = 0;    # number of fragments that cannot be retrieved
                               # when @-commands are converted
  $invalid_text_index_count = 0;
  %l2h_img = ();       # associate src file to destination file
                       # such that files are not copied twice
  $image_count = 1;

  $html_output_count = 0;   # html text outputed in html result file

  $docu_name = $self->get_info('document_name');
  # destination dir -- generated images are put there, should be the same
  # as dir of enclosing html document --
  $destination_directory = $self->get_info('destination_directory');
  $destination_directory = '' if (!defined($destination_directory));
  my $dir = $destination_directory;
  $dir = File::Spec->curdir() if ($dir eq '');
  my $dir_encoding;
  # $destination_directory_string is used in binary file path strings
  ($destination_directory_string, $dir_encoding)
    = $self->encoded_output_file_name($dir);

  $l2h_name = "${docu_name}_l2h";
  my $l2h_latex_file_name = "${l2h_name}.tex";
  my $l2h_latex_path_name = File::Spec->catfile($destination_directory,
                                                $l2h_latex_file_name);
  # we use utf-8 encoding irrespective of what is used in texi2any
  # because latex2html use the file name in the resulting file and
  # it needs to be utf-8
  my $encoded_l2h_latex_file_name = encode('UTF-8', $l2h_latex_file_name);
  my $l2h_latex_path_string = File::Spec->catfile($destination_directory_string,
                                                  $encoded_l2h_latex_file_name);
  $l2h_cache_path_name = File::Spec->catfile($destination_directory,
                                             "${docu_name}-l2h_cache.pm");
  # set consistently with $l2h_latex_file_name to ensure that
  # latex2html will create a file with this name.
  my $l2h_html_file_name = "${l2h_name}.html";

  $debug = $self->get_conf('DEBUG');
  $verbose = $self->get_conf('VERBOSE');

  # no point in doing anything in that case.  Reusing cached information
  # may have been relevant, but the cache file should not exist
  # (cache file is /dev/null-l2h_cache.pm).
  return 0 if (defined($self->get_conf('OUTFILE'))
       and $Texinfo::Common::null_device_file{$self->get_conf('OUTFILE')});

  my $options_latex_math;
  if ($self->get_conf('CONVERT_TO_LATEX_IN_MATH')) {
    $options_latex_math
     = {Texinfo::Convert::LaTeX::copy_options_for_convert_to_latex_math($self)};
  }

  my $l2h_skip = $self->get_conf('L2H_SKIP');

  # open the database that holds cached text
  l2h_init_cache($self) if (!defined($l2h_skip) or $l2h_skip);


  my @replaced_commands = ('displaymath', 'latex', 'math', 'tex');
  my $collected_commands = Texinfo::Common::collect_commands_list_in_tree(
                                        $document_root, \@replaced_commands);

  my $texinfo_command_index = 0;     # index of latex elements/commands processed
  my @latex_text_indices_to_convert; # indices of latex texts that should be converted
  my %latex_text_indices;        # associate a latex text with the index in the
                                 # html result array.  Allows to do each text
                                 # only once
  my $cached_count = 0;          # number of cached latex texts
  if (scalar(@{$collected_commands})) {
    foreach my $element (@{$collected_commands}) {
      my $command = $element->{'cmdname'};
      my $tree;
      if ($command eq 'math') {
        $tree = $element->{'args'}->[0];
      } else {
        $tree = {'contents' => [@{$element->{'contents'}}]};
        if ($tree->{'contents'}->[0]
            and $tree->{'contents'}->[0]->{'type'}
            and ($tree->{'contents'}->[0]->{'type'} eq 'empty_line_after_command'
                 or $tree->{'contents'}->[0]->{'type'} eq 'elided_rawpreformatted')) {
          shift @{$tree->{'contents'}};
        }
        if ($tree->{'contents'}->[-1]->{'cmdname'}
           and $tree->{'contents'}->[-1]->{'cmdname'} eq 'end') {
          pop @{$tree->{'contents'}};
        }
      }
      if (scalar(@{$tree->{'contents'}}) == 0) {
        # should correspond to an ignored block
        $commands_ignored{$element} = 1;
        next;
      }
      $texinfo_command_index++;
      my $texinfo_text;
      if ($self->get_conf('CONVERT_TO_LATEX_IN_MATH')) {
        $texinfo_text = Texinfo::Convert::LaTeX::convert_to_latex_math(undef,
                                                   $tree, $options_latex_math);
      } else {
        $texinfo_text = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
      }
      # print $texinfo_text into latex file (if not already there nor in cache)
      # which can be later on replaced by the latex2html generated text.
      my $latex_text = $texinfo_text;
      if ($command eq 'tex' or $command eq 'latex') {
        $latex_text .= ' ';
      } elsif ($command eq 'math') {
        $latex_text = "\$".$latex_text."\$";
      } elsif ($command eq 'displaymath') {
        $latex_text = "\\[".$latex_text."\\]";
      }
      $latex_text =~ s/(\s*)$//;
      # try whether we have text already on things to do
      my $latex_text_index = $latex_text_indices{$latex_text};
      unless ($latex_text_index) {
        $latex_texts_count++;
        $latex_text_index = $latex_texts_count;
        # try whether we can get it from cache
        my $cached_text = l2h_from_cache($self, $latex_text);
        if (defined($cached_text)) {
          $cached_count++;
          # put the cached result in the html result array
          $l2h_from_html[$latex_text_index] = $cached_text;
        } else {
          # the text indexed by $latex_text_index should be converted
          push @latex_text_indices_to_convert, $latex_text_index;
        }
        $latex_texts[$latex_text_index] = $latex_text;
        $latex_text_indices{$latex_text} = $latex_text_index;
      }
      $commands_counters{$element} = $texinfo_command_index;
      $commands_text_index{$element} = $latex_text_index;
    }
  } else {
    # no handled command, nothing to do
    warn "# l2h: no handled commands\n" if ($verbose);
    $latex_commands_count = 0;
    return 0;
  }
  $latex_to_convert_count = scalar(@latex_text_indices_to_convert);

  $latex_commands_count = $texinfo_command_index;
  my $reused = $latex_commands_count - $latex_to_convert_count - $cached_count;
  warn "# l2h: to latex ($cached_count cached, $reused reused, $latex_to_convert_count to process)\n" if ($verbose);

  # when there are tex constructs to convert (not everything
  # comes from the cache)
  if ($latex_to_convert_count > 0) {
    unless ($l2h_skip) {
      my $l2h_to_latex_status
        = l2h_to_latex($self, $l2h_latex_path_string, $l2h_latex_path_name,
                       \@latex_text_indices_to_convert, \@latex_texts);
      return 1 unless ($l2h_to_latex_status);

      # the non equality of $latex_converted_count and $latex_to_convert_count
      # is the preferred indicator of skipping this stage or failure.
      $latex_converted_count = $latex_to_convert_count;
    }

    if ($latex_converted_count > 0) {
      my $l2h_to_html_status = l2h_to_html($self, $l2h_latex_path_string,
                                           $l2h_latex_path_name);
      return 1 unless($l2h_to_html_status);

      my @html_retrieved_text_indices = l2h_retrieve_from_html($self,
                                                     $l2h_html_file_name);
      $html_converted_count = scalar(@html_retrieved_text_indices);
      # Not the same number of converted elements and retrieved elements.
      if ($latex_converted_count != $html_converted_count) {
        # unless latex2html somewhat mangles the output this cannot
        # actually happen, so it could also be presented as an error or a bug.
        $self->converter_document_warn(sprintf(__(
          "latex2html.pm: processing produced %d items in HTML; expected %d"),
                          $html_converted_count, $latex_converted_count));
      }
      # It could be checked, in addition, that @html_retrieved_text_indices
      # contains the same indices as @latex_text_indices_to_convert.
      warn "# l2h: retrieved converted $html_converted_count of $latex_texts_count html contents\n"
        if ($verbose);
    } else {
      warn "# l2h: skipping latex2html run\n" if ($verbose);
    }
  } else {
    warn "# l2h: no latex2html run needed\n" if ($verbose);
  }
  return 0;
}

###################################
# Use latex2html to generate corresponding html code and images
#
# l2h_to_html():
#   Call latex2html on $l2h_latex_path_string
#   Put images (prefixed with $l2h_name."_") and html file(s) in $destination_directory_string
#   Return 1, on success
#          0, otherwise
#
sub l2h_to_html($$$)
{
  my $self = shift;
  my $l2h_latex_path_string = shift;
  my $l2h_latex_path_name = shift;

  my $l2h_prefix = "${l2h_name}_";

  my $dotbug;
  # Check for dot in directory where dvips will work
  if ($self->get_conf('L2H_TMP')) {
    if ($self->get_conf('L2H_TMP') =~ /\./) {
      $self->converter_document_warn(
        __("l2h: L2H_TMP directory contains a dot"));
      $dotbug = 1;
    }
  } else {
    if (cwd() =~ /\./) {
      $self->converter_document_warn(
            __("l2h: current directory contains a dot"));
      $dotbug = 1;
    }
  }

  my $latex2html_command = $self->get_conf('L2H_L2H');
  if (not defined($latex2html_command) or $latex2html_command !~ /\S/) {
    $self->converter_document_error(__("l2h: command not set"));
    return 0;
  }

  # the final call is obtained by concatenating $call_start encoded
  # and strings based on already encoded file paths.
  my $call_start = $latex2html_command;
  # use init file, if specified
  my $init_file = $self->get_conf('L2H_FILE');
  # FIXME not clear whether encoded_input_file_name or encoded_output_file_name
  # should be used here
  if (defined($init_file) and $init_file ne '') {
    # FIXME likely incorrect, should use the same encoding as
    # the encoding used to encode call
    my ($encoded_init_file, $init_path_encoding)
      = $self->encoded_input_file_name($init_file);
    $call_start .= " -init_file " . $init_file
      if -f $encoded_init_file and -r $encoded_init_file;
  }
  # set output dir
  my $encoded_destination_dir_option = ' -no_subdir';
  my $destination_dir_option = $encoded_destination_dir_option;
  my $curdir = File::Spec->curdir();
  if ($destination_directory ne '' and $destination_directory ne $curdir) {
    $encoded_destination_dir_option = " -dir ".$destination_directory_string;
    $destination_dir_option = " -dir ".$destination_directory;
  }
  # use l2h_tmp, if specified
  $call_start .= " -tmp ".$self->get_conf('L2H_TMP')
    if (defined($self->get_conf('L2H_TMP'))
        and $self->get_conf('L2H_TMP') ne '');
  # use a given html version if specified
  $call_start .= " -html_version ".$self->get_conf('L2H_HTML_VERSION')
    if (defined($self->get_conf('L2H_HTML_VERSION'))
        and $self->get_conf('L2H_HTML_VERSION') ne '');
  # options we want to be sure of
  $call_start .= " -address 0 -info 0 -split 0 -no_navigation -no_auto_link";

  # FIXME use utf-8 here?
  my $encoding = $self->get_conf('MESSAGE_ENCODING');
  my $encoded_call_start;
  if (defined($encoding)) {
    $encoded_call_start = encode($encoding, $call_start);
  } else {
    $encoded_call_start = $call_start;
  }
  my $l2h_prefix_string = encode('UTF-8', $l2h_prefix);
  # concatenante strings containing already encoded file paths
  my $encoded_call = $encoded_call_start . $encoded_destination_dir_option
       ." -prefix $l2h_prefix_string $l2h_latex_path_string";
  my $call = $call_start . $destination_dir_option
       ." -prefix $l2h_prefix $l2h_latex_path_name";

  warn "# l2h: executing '$encoded_call'\n" if ($verbose);
  if (system($encoded_call)) {
    $self->converter_document_error(sprintf(__("l2h: command did not succeed: %s"),
                                         $call));
    return 0;
  } else  {
    warn "# l2h: latex2html terminated successfully\n" if ($verbose);
    return 1;
  }
}

##########################
# Third stage: Extract generated contents from latex2html run
# Retrieve with: l2h_retrieve_from_html
#   open $l2h_html_path_string for reading
#   reads in contents into array indexed by text indices
#   return the indices of retrieved fragments


# the images generated by latex2html have names like ${docu_name}_l2h_img?.png
# they are copied to ${docu_name}_?.png, and html is changed accordingly.

# FIXME is it really necessary to bother doing that? Looks like an unneeded
# complication to me (pertusus, 2009), and it could go bad if there is some
# SRC="(.*?)" in the text (though the regexp could be made more specific).

# %l2h_img;            # associate src file to destination file
                        # such that files are not copied twice
sub l2h_change_image_file_names($$)
{
  my $self = shift;
  my $content = shift;
  my @images = ($content =~ /SRC="(.*?)"/g);

  foreach my $src (@images) {
    my $dest = $l2h_img{$src};
    unless (defined($dest)) {
      my $ext = '';
      if ($src =~ /.*\.(.*)$/ and (!defined($self->get_conf('EXTENSION'))
                                    or $1 ne $self->get_conf('EXTENSION'))) {
        $ext = ".$1";
      } else {
        # A warning when the image extension is the same than the
        # document extension. copying the file could result in
        # overwriting an output file (almost surely if the default
        # texi2html file names are used).
        $self->converter_document_warn(sprintf(__(
                            "l2h: image has invalid extension: %s"), $src));
        next;
      }
      while (1) {
        my $image_file_name = "${docu_name}_${image_count}$ext";
        # encode in UTF-8 as latex2html uses $l2h_latex_path_string, which
        # is UTF-8 encoded to setup the file names
        my $encoded_image_file_name = encode('UTF-8', $image_file_name);
        my $image_file_path = File::Spec->catfile($destination_directory_string,
                                                  $encoded_image_file_name);
        unless (-e $image_file_path) {
          last;
        }
        $image_count++;
      }
      my $src_file = File::Spec->catfile($destination_directory, $src);
      my $encoded_src = Encode::encode('UTF-8', $src);
      my $encoded_file_src
        = File::Spec->catfile($destination_directory_string, $encoded_src);

      $dest = "${docu_name}_${image_count}$ext";
      my $file_dest
        = File::Spec->catfile($destination_directory, $dest);
      my $encoded_dest = Encode::encode('UTF-8', $dest);
      my $encoded_file_dest = File::Spec->catfile($destination_directory_string,
                                                  $encoded_dest);
      if ($debug) {
        copy($encoded_file_src, $encoded_file_dest);
      } else {
        if (!rename($encoded_file_src, $encoded_file_dest)) {
          $self->converter_document_warn(
                 sprintf(__("l2h: rename %s as %s failed: %s"),
                                 $src_file, $file_dest, $!));
        }
      }
      $l2h_img{$src} = $dest;
    }
    $content =~ s/SRC="$src"/SRC="$dest"/g;
  }
  return $content;
}

sub l2h_retrieve_from_html($$)
{
  my $self = shift;
  my $l2h_html_file_name = shift;

  my @html_retrieved_text_indices;   # the text indices retrieved

  my $l2h_html_path_name = File::Spec->catfile($destination_directory,
                                               $l2h_html_file_name);
  my $encoded_l2h_html_file_name = encode('UTF-8', $l2h_html_file_name);
  my $l2h_html_path_string = File::Spec->catfile($destination_directory_string,
                                                 $encoded_l2h_html_file_name);

  if (! open(L2H_HTML, "<$l2h_html_path_string")) {
    $self->converter_document_error(
                sprintf(__("l2h: could not open %s: %s"),
                                 $l2h_html_path_name, $!));
    # return empty array
    return @html_retrieved_text_indices;
  }
  # the file content is UTF-8 encoded
  binmode(L2H_HTML, ':utf8');
  warn "# l2h: use $l2h_html_path_string as html file\n" if ($verbose);

  my ($latex_text_index, $h_line);
  while ($h_line = <L2H_HTML>) {
    if ($h_line =~ /!-- l2h_begin $l2h_name ([0-9]+) --/) {
      $latex_text_index = $1;
      my $h_content = '';
      my $h_end_found = 0;
      while ($h_line = <L2H_HTML>) {
        if ($h_line =~ /!-- l2h_end $l2h_name $latex_text_index --/) {
          $h_end_found = 1;
          chomp $h_content;
          chomp $h_content;
          push @html_retrieved_text_indices, $latex_text_index;
          # transform image file names and copy image files
          $h_content = l2h_change_image_file_names($self, $h_content);
          # store result in the html result array
          $l2h_from_html[$latex_text_index] = $h_content;
          # also add the result in cache hash
          $l2h_cache{$latex_texts[$latex_text_index]} = $h_content;
          last;
        }
        $h_content = $h_content.$h_line;
      }
      unless ($h_end_found) {
        # couldn't found the closing comment. Should be a bug.
        $self->converter_document_warn(
                sprintf(__("latex2html.pm: end of \@%s text %d not found"),
                                      $l2h_name, $latex_text_index));
        last;
      }
    }
  }
  # FIXME error/warning if close fails
  close(L2H_HTML);
  return @html_retrieved_text_indices;
}

# called each time an element handled by latex2html is encountered, should
# output the corresponding html
sub l2h_convert_command($$$;$$)
{
  my $self = shift;
  my $cmdname = shift;;
  my $command = shift;
  my $args = shift;
  my $content = shift;

  # if not defined($latex_commands_count) the initialization did not
  # went to the point of commands collections.

  # The default formatting will lead to a warning message since the
  # raw format is not html, so simply return an empty string.
  if (not defined($latex_commands_count) or $commands_ignored{$command}) {
    return '';
  }
  #if (not defined($latex_commands_count)) {
  #  return &{$self->default_command_conversion($cmdname)}($self,
  #                             $cmdname, $command, $args, $content);
  #}

  my $command_count = $commands_counters{$command};
  my $latex_text_index = $commands_text_index{$command};

  ################################## begin debug section (incorrect counts)
  if (!defined($command_count)) {
    $self->present_bug_message("l2h: conversion of ${cmdname}, undef command_count");
    $command_count = -1;
  }
  if (!defined($latex_text_index)) {
    # counter is undefined
    $invalid_text_index_count++;
    $self->present_bug_message(
        "l2h: could not determine the fragment $command_count, for \@$cmdname");
    return ("<!-- l2h: ". __LINE__ . " undef count for ${cmdname} $command_count -->")
      if ($debug);
    return '';
  } elsif(($latex_text_index <= 0) or ($latex_text_index > $latex_texts_count)) {
    # counter out of range
    $invalid_text_index_count++;
    $self->present_bug_message("l2h: request of $latex_text_index out of range [0,$latex_texts_count]");
    return ("<!-- l2h: ". __LINE__ . " out of range index $latex_text_index -->")
      if ($debug);
    return '';
  }
  ################################## end debug section (incorrect counts)

  # this seems to be a valid counter
  my $result = '';
  $result = "<!-- l2h_begin $l2h_name $latex_text_index -->" if ($debug);
  if (defined($l2h_from_html[$latex_text_index])) {
    $html_output_count++;
    $result .= $l2h_from_html[$latex_text_index];
    $result .= "\n" if ($cmdname eq 'tex' or $cmdname eq 'latex');
  } else {
    # if the result is not in @l2h_from_html, it should in general mean that
    # the conversion was skipped or there was an error or maybe latex2html
    # somehow mangled the output.
    $extract_error_count++;
    # Expected error if the conversion to html failed or was skipped,
    # additional warning only if the conversion seems to have proceeded normally.
    if ($latex_converted_count == $latex_to_convert_count
        and $latex_converted_count == $html_converted_count) {
      # it could also probably be marked as a bug (or error) as there is no
      # situation in which this could happen with the conditions on succeeding
      # conversion.
      $self->converter_document_warn(sprintf(__(
        "l2h: could not extract the fragment %d for \@%s, text %d, from HTML"),
                   $command_count, $cmdname, $latex_text_index));
    } elsif ($verbose) {
      warn "# l2h: incomplete l2h. No conversion command $command_count \@$cmdname, text index $latex_text_index\n";
    }
    # simple (ordinary) substitution (without l2h)
    $result .= "<!-- l2h: ". __LINE__ . " use default -->" if ($debug);
    $result .= &{$self->default_command_conversion($cmdname)}($self,
                                           $cmdname, $command, $args, $content);
  }
  $result .= "<!-- l2h_end $l2h_name $latex_text_index -->" if ($debug);
  return $result;
}

# store results in the cache and remove temporary files.
sub l2h_finish($)
{
  my $self = shift;

  return 0 if (not defined($latex_commands_count));

  if ($verbose) {
    if ($extract_error_count + $invalid_text_index_count) {
      warn "# l2h: finish ($extract_error_count extract errors, $invalid_text_index_count invalid index errors)\n";
    } else {
      warn "# l2h: finish (no error)\n";
    }
    if ($html_output_count != $latex_converted_count) {
      # this happens if texts are reused, or cache is used,
      # and if commands are not expanded later.
      warn "# l2h: $html_output_count html outputed for $latex_converted_count converted\n";
    }
    if ($html_output_count != $latex_commands_count) {
      # this may happen if @-commands are collected at some places
      # but @-command at those places are not expanded later. For
      # example @math on @multitable lines, or in @copying.
      warn "# l2h: $html_output_count html outputed for $latex_commands_count collected\n";
    }
  }

  # return in case of error or skipped run
  return 0 if ($latex_converted_count != $latex_to_convert_count
               or $latex_converted_count != $html_converted_count);

  l2h_store_cache($self);
  if ($self->get_conf('L2H_CLEAN') and $latex_converted_count > 0) {
    warn "# l2h: removing temporary files generated by l2h extension\n"
     if ($verbose);
    my $quoted_l2h_name = quotemeta($l2h_name);
    if (opendir (DIR, $destination_directory_string)) {
      foreach my $file (readdir(DIR)) {
        # we have made sure that all the files names are encoded
        # in UTF-8, but doing it above or by passing UTF-8 encoded
        # file names to latex2html
        my $file_name = decode('UTF-8', $file);
        if ($file_name =~ /^$quoted_l2h_name/) {
          # FIXME error condition not checked
          unlink File::Spec->catfile($destination_directory_string, $file);
        }
      }
    }
  }
  warn "# l2h: end\n" if $verbose;
  return 0;
}

##############################
# stuff for l2h caching
#
# FIXME it is clear that l2h stuff can take very long compared with texi2any
# which is already quite long. However this also adds some complexity

# It was originally tried with a dbm data base, but it did not store all
# keys/values. Hence, do as latex2html does
sub l2h_init_cache($)
{
  my $self = shift;
  my ($encoded_l2h_cache_path_name, $l2h_cache_path_encoding)
    = $self->encoded_output_file_name($l2h_cache_path_name);
  if (-r $encoded_l2h_cache_path_name) {
    my $loaded_path;
    # do require a relative path, or to have . in INC
    if (not File::Spec->file_name_is_absolute($l2h_cache_path_name)) {
      $loaded_path = File::Spec->catfile(File::Spec->curdir(),
                                       $encoded_l2h_cache_path_name);
    } else {
      $loaded_path = $encoded_l2h_cache_path_name;
    }
    my $rdo = do "$loaded_path";
    unless ($rdo) {
      # FIXME error or warning?
      $self->converter_document_error(
               sprintf(__("l2h: could not compile %s: %s"),
                                  $l2h_cache_path_name, $@))
        if ($@);
      if (! defined($rdo)) {
        $self->converter_document_error(
               sprintf(__("l2h: could not load %s: %s"),
                                  $l2h_cache_path_name, $!));
      } else {
        $self->converter_document_error(
               sprintf(__("l2h: error loading %s"),
                                   $l2h_cache_path_name));
      }
    }
  }
  warn "# l2h: Cached: ".join('|', sort(keys(%l2h_cache)))."\n"
    if ($verbose and scalar(keys(%l2h_cache)));
}

# store all the text obtained through latex2html or from previous runs cache
sub l2h_store_cache($)
{
  my $self = shift;
  # do not reset the cache if there was no new conversion
  return unless ($html_converted_count);
  my ($key, $value);
  my ($encoded_l2h_cache_path_name, $l2h_cache_path_encoding)
    = $self->encoded_output_file_name($l2h_cache_path_name);
  unless (open(FH, ">$encoded_l2h_cache_path_name")) {
    $self->converter_document_error(
          sprintf(__("l2h: could not open %s for writing: %s"),
                                  $l2h_cache_path_name, $!));
    return;
  }
  binmode(FH, ':utf8');

  print FH "# Automatically generated\nuse utf8;\n";
  print FH "our %l2h_cache;\n";

  foreach my $key(sort(keys(%l2h_cache))) {
    my $value = $l2h_cache{$key};
    # escape stuff
    $key =~ s|/|\\/|g;
    $key =~ s|\\\\/|\\/|g;
    # weird, a \ at the end of the key results in an error
    # maybe this also broke the dbm database stuff
    $key =~ s|\\$|\\\\|;
    $value =~ s/\|/\\\|/go;
    $value =~ s/\\\\\|/\\\|/go;
    $value =~ s|\\\\|\\\\\\\\|g;
    print FH "\n\$l2h_cache_key = q/$key/;\n";
    print FH "\$l2h_cache{\$l2h_cache_key} = q|$value|;\n";
  }
  # this can be used when debugging, but otherwise this is not such a
  # good idea, as it will be read by the next run
  #print FH 'warn "# cache: Cached: ".join("|", sort(keys(%l2h_cache)))."\n"'.";\n"
  #  if ($verbose);
  print FH "\n1;\n";
  # FIXME error condition not checked
  close(FH);
}

# return cached html, if it exists for text, and if all pictures
# are there, as well
sub l2h_from_cache($$)
{
  my $self = shift;
  my $text = shift;
  my $cached = $l2h_cache{$text};
  if (defined($cached)) {
    while ($cached =~ m/SRC="(.*?)"/g) {
      my $cached_image_file_name = $1;
      my $encoded_cached_image_file_name
            = encode('UTF-8', $cached_image_file_name);
      my $cached_image_path_string
         = File::Spec->catfile($destination_directory_string,
                               $encoded_cached_image_file_name);
      unless (-e $cached_image_path_string) {
        return undef;
      }
    }
    return $cached;
  }
  return undef;
}

1;
