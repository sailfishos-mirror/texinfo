#+##############################################################################
#
# latex2html.pm: interface to LaTeX2HTML
#
#    Copyright (C) 1999, 2000, 2003, 2005, 2006, 2009, 2011, 2013
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

require 5.0;
use strict;

use Cwd;
use File::Copy;
use File::Spec;

# For __(
use Texinfo::Common;

texinfo_register_handler('structure', \&l2h_process);
texinfo_register_handler('finish', \&l2h_finish);

texinfo_register_command_formatting('math', \&l2h_do_tex);
texinfo_register_command_formatting('tex', \&l2h_do_tex);
texinfo_register_command_formatting('displaymath', \&l2h_do_tex);

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
#                    (l2h_to_latex, l2h_finish_to_latex)
#    to html: Use latex2html to generate corresponding html code and images
#                    (l2h_to_html)
#    from html: Extract generated code and images from latex2html run
#                    (l2h_init_from_html)
# 2) l2h_do_tex called each time a @tex or @math command is encountered
#               in the output tree.

# init l2h defaults for files and names

my ($l2h_name, $l2h_latex_file, $l2h_cache_file, $l2h_html_file, $l2h_prefix);

# holds the status of latex2html operations. If 0 it means that there was 
# an error
my $status = 0;

my $debug;
my $verbose;
my $docu_rdir;
my $docu_volume;
my $docu_directories;
my $docu_name;

my %commands_counters;

# init_from_html
my $extract_error_count;
my $invalid_counter_count;

# change_image_file_names
my %l2h_img;            # associate src file to destination file
                        # such that files are not copied twice
my $image_count;

# do_tex
my $html_output_count = 0;   # html text outputed in html result file

##########################
#
# First stage: Generation of Latex file
# Initialize with: init
# Add content with: l2h_to_latex ($text) --> HTML placeholder comment
# Finish with: finish_to_latex
#

my $l2h_latex_preamble = <<EOT;
% This document was automatically generated by the l2h extenstion of texi2html
% DO NOT EDIT !!!
\\documentclass{article}
\\usepackage{html}
\\begin{document}
EOT

my $l2h_latex_closing = <<EOT;
\\end{document}
EOT

my %l2h_to_latex = ();         # associate a latex text with the index in the
                               # html result array.
my @l2h_to_latex = ();         # array used to associate the index with 
                               # the original latex text.
my $latex_count = 0;           # number of latex texts really stored
my $latex_converted_count = 0; # number of latex texts passed through latex2html
my $to_latex_count = 0;        # total number of latex texts processed
my $cached_count = 0;          # number of cached latex texts
my %l2h_cache = ();            # the cache hash. Associate latex text with 
                               # html from the previous run
my @l2h_from_html;             # array of resulting html

my %global_count = ();         # associate a command name and the 
                               # corresponding counter to the index in the
                               # html result array

# set $status to 1, if l2h could be initalized properly, to 0 otherwise
sub l2h_process($$)
{
  my $self = shift;
  my $document_root = shift;
  %l2h_to_latex = ();         # associate a latex text with the index in the
                              # html result array.
  @l2h_to_latex = ();         # array used to associate the index with 
                              # the original latex text.
  $latex_count = 0;           # number of latex texts really stored
  $latex_converted_count = 0; # number of latex texts passed through latex2html
  $to_latex_count = 0;        # total number of latex texts processed
  $cached_count = 0;          # number of cached latex texts
  %l2h_cache = ();            # the cache hash. Associate latex text with 
                              # html from the previous run
  @l2h_from_html = ();        # array of resulting html

  %global_count = ();         # associate a command name and the 
                              # corresponding counter to the index in the
                              # html result array
  %commands_counters = ();
  $extract_error_count = 0;
  $invalid_counter_count = 0;
  %l2h_img = ();       # associate src file to destination file
                       # such that files are not copied twice
  $image_count = 1;

  $html_output_count = 0;   # html text outputed in html result file
  $status = 0;
  return if (defined($self->get_conf('OUTFILE'))
        and $Texinfo::Common::null_device_file{$self->get_conf('OUTFILE')});


  $docu_name = $self->{'document_name'};
  $docu_rdir = $self->{'destination_directory'};
  $docu_rdir = '' if (!defined($docu_rdir));
  my $no_file;
  ($docu_volume, $docu_directories, $no_file) 
      = File::Spec->splitpath($docu_rdir, 1);
  $l2h_name =  "${docu_name}_l2h";
  $l2h_latex_file = File::Spec->catpath($docu_volume, $docu_directories,
                                        "${l2h_name}.tex");
  $l2h_cache_file = File::Spec->catpath($docu_volume, $docu_directories, 
                                        "${docu_name}-l2h_cache.pm");
  # destination dir -- generated images are put there, should be the same
  # as dir of enclosing html document --
  $l2h_html_file = File::Spec->catpath($docu_volume, $docu_directories,
                                       "${l2h_name}.html");
  $l2h_prefix = "${l2h_name}_";
  $debug = $self->get_conf('DEBUG');
  $verbose = $self->get_conf('VERBOSE');

  unless ($self->get_conf('L2H_SKIP')) {
    unless (open(L2H_LATEX, ">$l2h_latex_file")) {
      $self->document_error($self, sprintf(__(
              "l2h: could not open latex file %s for writing: %s"),
                                    $l2h_latex_file, $!));
      $status = 0;
      return;
    }
    warn "# l2h: use ${l2h_latex_file} as latex file\n" if ($verbose);
    print L2H_LATEX $l2h_latex_preamble;
  }
  # open the database that holds cached text
  l2h_init_cache($self) if (!defined($self->get_conf('L2H_SKIP')) 
                   or $self->get_conf('L2H_SKIP'));

  my @replaced_commands = ('tex', 'math', 'displaymath');
  my $collected_commands = Texinfo::Common::collect_commands_list_in_tree(
                                        $document_root, \@replaced_commands);
  my $counter = 0;
  if (scalar(@{$collected_commands})) {
    foreach my $element (@{$collected_commands}) {
      my $command = $element->{'cmdname'};
      $counter++;
      my $tree;
      if ($command eq 'math') {
        $tree = $element->{'args'}->[0];
      } else {
        $tree = {'contents' => [@{$element->{'contents'}}]};
        if ($tree->{'contents'}->[0]
            and $tree->{'contents'}->[0]->{'type'}
            and $tree->{'contents'}->[0]->{'type'} eq 'empty_line_after_command') {
          shift @{$tree->{'contents'}};
        }
        if ($tree->{'contents'}->[-1]->{'cmdname'} 
           and $tree->{'contents'}->[-1]->{'cmdname'} eq 'end') {
          pop @{$tree->{'contents'}};
        }
      }
      my $text = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
      l2h_to_latex($self, $command, $text, $counter);
      $commands_counters{$element} = $counter;
    }
  }
  $status = l2h_finish_to_latex($self);
  if ($status) {
    $status = l2h_to_html($self);
  }
  if ($status) {
    $status = l2h_init_from_html($self);
  }
  # FIXME use $status?  That is abort when something goes wrong on the
  # latex2html front?
  return 1;
}


# print text (2nd arg) into latex file (if not already there nor in cache)
# which can be later on replaced by the latex2html generated text.
# 
sub l2h_to_latex($$$$)
{
  my $self = shift;
  my $command = shift;
  my $text = shift;
  my $counter = shift;

  if ($command eq 'tex') {
    $text .= ' ';
  } elsif ($command eq 'math') {
    $text = "\$".$text."\$";
  } elsif ($command eq 'displaymath') {
    $text = "\$\$".$text."\$\$";
  }
  $to_latex_count++;
  $text =~ s/(\s*)$//;
  # try whether we have text already on things to do
  my $count = $l2h_to_latex{$text};
  unless ($count) {
    $latex_count++;
    $count = $latex_count;
    # try whether we can get it from cache
    my $cached_text = l2h_from_cache($text);
    if (defined($cached_text)) {
      $cached_count++;
      # put the cached result in the html result array
      $l2h_from_html[$count] = $cached_text;
    } else {
      $latex_converted_count++;
      unless ($self->get_conf('L2H_SKIP')) {
        print L2H_LATEX "\\begin{rawhtml}\n\n";
        print L2H_LATEX "<!-- l2h_begin $l2h_name $count -->\n";
        print L2H_LATEX "\\end{rawhtml}\n";

        print L2H_LATEX "$text\n";

        print L2H_LATEX "\\begin{rawhtml}\n";
        print L2H_LATEX "<!-- l2h_end $l2h_name $count -->\n\n";
        print L2H_LATEX "\\end{rawhtml}\n";
      }
    }
    $l2h_to_latex[$count] = $text;
    $l2h_to_latex{$text} = $count;
  }
  $global_count{"${command}_$counter"} = $count;
  return 1;
}

# print closing into latex file and close it
sub l2h_finish_to_latex($)
{
  my $self = shift;
  my $reused = $to_latex_count - $latex_converted_count - $cached_count;
  unless ($self->get_conf('L2H_SKIP')) {
    print L2H_LATEX $l2h_latex_closing;
    close (L2H_LATEX);
  }
  warn "# l2h: finished to latex ($cached_count cached, $reused reused, $latex_converted_count to process)\n" if ($verbose);
  unless ($latex_count) {
    # no @tex nor @math
    l2h_finish($self);
    return 0;
  }
  return 1;
}

###################################
# Use latex2html to generate corresponding html code and images
#
# to_html([$l2h_latex_file, [$l2h_html_dir]]):
#   Call latex2html on $l2h_latex_file
#   Put images (prefixed with $l2h_name."_") and html file(s) in $l2h_html_dir
#   Return 1, on success
#          0, otherwise
#
sub l2h_to_html($)
{
  my $self = shift;
  my ($call, $dotbug);
  # when there are no tex constructs to convert (happens in case everything
  # comes from the cache), there is no latex2html run
  if ($self->get_conf('L2H_SKIP') or ($latex_converted_count == 0)) {
     warn "# l2h: skipping latex2html run\n" if ($verbose);
     return 1;
  }
  # Check for dot in directory where dvips will work
  if ($self->get_conf('L2H_TMP')) {
    if ($self->get_conf('L2H_TMP') =~ /\./) {
      $self->document_warn($self,
        __("l2h: L2H_TMP directory contains a dot"));
      $dotbug = 1;
    }
  } else {
    if (cwd() =~ /\./) {
      $self->document_warn($self,
            __("l2h: current directory contains a dot"));
      $dotbug = 1;
    }
  }
  return 0 if ($dotbug);

  my $latex2html_command = $self->get_conf('L2H_L2H');
  if (not defined($latex2html_command) or $latex2html_command !~ /\S/) {
    $self->document_error($self, __("l2h: command not set"));
    return 0;
  }
  $call = $latex2html_command;
  # use init file, if specified
  my $init_file = $self->get_conf('L2H_FILE');
  $call .= " -init_file " . $init_file
    if (defined($init_file) and $init_file ne '' 
        and -f $init_file and -r $init_file);
  # set output dir
  $call .=  (($docu_rdir ne '') ? " -dir $docu_rdir" : " -no_subdir");
  # use l2h_tmp, if specified
  $call .= " -tmp ".$self->get_conf('L2H_TMP')
    if (defined($self->get_conf('L2H_TMP'))
        and $self->get_conf('L2H_TMP') ne '');
  # use a given html version if specified
  $call .= " -html_version ".$self->get_conf('L2H_HTML_VERSION')
    if (defined($self->get_conf('L2H_HTML_VERSION'))
        and $self->get_conf('L2H_HTML_VERSION') ne '');
  # options we want to be sure of
  $call .= " -address 0 -info 0 -split 0 -no_navigation -no_auto_link";
  $call .= " -prefix $l2h_prefix $l2h_latex_file";

  warn "# l2h: executing '$call'\n" if ($verbose);
  if (system($call)) {
    $self->document_error($self,
             sprintf(__("l2h: command did not succeed: %s"), 
                                  $call));
    return 0;
  } else  {
    warn "# l2h: latex2html finished successfully\n" if ($verbose);
    return 1;
  }
}

##########################
# Third stage: Extract generated contents from latex2html run
# Initialize with: init_from_html
#   open $l2h_html_file for reading
#   reads in contents into array indexed by numbers
#   return 1,  on success -- 0, otherwise
# Finish with: finish
#   closes $l2h_html_dir/$l2h_name.".$docu_ext"


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
  my ($src, $dest);

  for $src (@images) {
    $dest = $l2h_img{$src};
    unless ($dest) {
      my $ext = '';
      if ($src =~ /.*\.(.*)$/ and (!defined($self->get_conf('EXTENSION')) 
                                    or $1 ne $self->get_conf('EXTENSION'))) {
        $ext = ".$1";
      } else { 
        # A warning when the image extension is the same than the 
        # document extension. copying the file could result in 
        # overwriting an output file (almost surely if the default 
        # texi2html file names are used).
        $self->document_warn($self, sprintf(__(
                            "l2h: image has invalid extension: %s"), $src));
        next;
      }
      while (-e File::Spec->catpath($docu_volume, $docu_directories,
                                    "${docu_name}_${image_count}$ext")) {
        $image_count++;
      }
      my $file_src
        = File::Spec->catpath($docu_volume, $docu_directories, $src);
      $dest = "${docu_name}_${image_count}$ext";
      my $file_dest 
        = File::Spec->catpath($docu_volume, $docu_directories, $dest);
      if ($debug) {
        copy($file_src, $file_dest);
      } else {
        if (!rename($file_src, $file_dest)) {
          $self->document_warn($self,
                 sprintf(__("l2h: rename %s as %s failed: %s"), 
                                       $file_src, $file_dest, $!));
        }
      }
      $l2h_img{$src} = $dest;
    }
  $content =~ s/SRC="$src"/SRC="$dest"/g;
  }
  return $content;
}

sub l2h_init_from_html($)
{
  my $self = shift;
  # when there are no tex constructs to convert (happens in case everything
  # comes from the cache), the html file that was generated by previous
  # latex2html runs isn't reused.
  if ($latex_converted_count == 0) {
    return 1;
  }

  if (! open(L2H_HTML, "<$l2h_html_file")) {
    $self->document_warn($self,
                sprintf(__("l2h: could not open %s: %s"),
                                 $l2h_html_file, $!));
    return 0;
  }
  warn "# l2h: use $l2h_html_file as html file\n" if ($verbose);

  my $html_converted_count = 0;   # number of html resulting texts 
                                  # retrieved in the file

  my ($count, $h_line);
  while ($h_line = <L2H_HTML>) {
    if ($h_line =~ /!-- l2h_begin $l2h_name ([0-9]+) --/) {
      $count = $1;
      my $h_content = '';
      my $h_end_found = 0;
      while ($h_line = <L2H_HTML>) {
        if ($h_line =~ /!-- l2h_end $l2h_name $count --/) {
          $h_end_found = 1;
          chomp $h_content;
          chomp $h_content;
          $html_converted_count++;
          # transform image file names and copy image files
          $h_content = l2h_change_image_file_names($self, $h_content);
          # store result in the html result array
          $l2h_from_html[$count] = $h_content;
          # also add the result in cache hash
          $l2h_cache{$l2h_to_latex[$count]} = $h_content;
          last;
        }
        $h_content = $h_content.$h_line;
      }
      unless ($h_end_found) { 
        # couldn't found the closing comment. Should be a bug.
        $self->document_warn($self,
                sprintf(__("latex2html.pm: end of \@%s item %d not found"),
                                      $l2h_name, $count));
        close(L2H_HTML);
        return 0;
      }
    }
  }

  # Not the same number of converted elements and retrieved elements
  if ($latex_converted_count != $html_converted_count) {
    $self->document_warn($self, sprintf(__(
      "latex2html.pm: processing produced %d items in HTML; expected %d, the number of items found in the document"),       
                          $html_converted_count, $latex_converted_count));
  }

  warn "# l2h: Got $html_converted_count of $latex_count html contents\n"
    if ($verbose);

  close(L2H_HTML);
  return 1;
}

# $html_output_count = 0;   # html text outputed in html result file

# called each time a construct handled by latex2html is encountered, should
# output the corresponding html
sub l2h_do_tex($$)
{
  my $self = shift;
  my $cmdname = shift;;
  my $command = shift;
  my $content = shift;

  my $counter = $commands_counters{$command};
  return '' unless ($status);
  my $count = $global_count{"${cmdname}_$counter"}; 
  ################################## begin debug section (incorrect counts)
  if (!defined($count)) {
    # counter is undefined
    $invalid_counter_count++;
    $self->document_warn($self, 
           sprintf(__("l2h: could not determine the fragment %d for \@%s"),
                   $counter, $cmdname));
    return ("<!-- l2h: ". __LINE__ . " undef count for ${cmdname}_$counter -->")
      if ($debug);
    return '';
  } elsif(($count <= 0) or ($count > $latex_count)) {
    # counter out of range
    $invalid_counter_count++;
    $self->_bug_message("l2h: request of $count out of range [0,$latex_count]");
    return ("<!-- l2h: ". __LINE__ . " out of range count $count -->") 
      if ($debug);
    return '';
  }
  ################################## end debug section (incorrect counts)

  # this seems to be a valid counter
  my $result = '';
  $result = "<!-- l2h_begin $l2h_name $count -->" if ($debug);
  if (defined($l2h_from_html[$count])) {
    $html_output_count++;
    $result .= $l2h_from_html[$count];
    $result .= "\n" if ($cmdname eq 'tex');
  } else {
    # if the result is not in @l2h_from_html, there is an error somewhere.
    $extract_error_count++;
    $self->document_warn($self, sprintf(__(
       "l2h: could not extract the fragment %d for \@%s with output counter %d from HTML"), 
                   $counter, $cmdname, $count));
    # try simple (ordinary) substitution (without l2h)
    $result .= "<!-- l2h: ". __LINE__ . " use default -->" if ($debug);
    $result .= &{$self->default_commands_conversion($cmdname)}($self, 
                                                 $cmdname, $command, $content);
  }
  $result .= "<!-- l2h_end $l2h_name $count -->" if ($debug);
  return $result;
}

# store results in the cache and remove temporary files.
sub l2h_finish($)
{
  my $self = shift;
  return 1 unless($status);

  if ($verbose) {
    if ($extract_error_count + $invalid_counter_count) {
      warn "# l2h: finished from html ($extract_error_count extract and $invalid_counter_count invalid counter errors)\n";
    } else {
      warn "# l2h: finished from html (no error)\n";
    }
    if ($html_output_count != $latex_converted_count) { 
      # this may happen if @-commands are collected at some places
      # but @-command at those places are not expanded later. For 
      # example @math on @multitable lines.
      warn "# l2h: $html_output_count html outputed for $latex_converted_count converted\n";
    }
  }
  l2h_store_cache($self);
  if ($self->get_conf('L2H_CLEAN')) {
    warn "# l2h: removing temporary files generated by l2h extension\n"
     if ($verbose);
    my $quoted_l2h_name = quotemeta($l2h_name);
    my $dir = $docu_rdir;
    $dir = File::Spec->curdir() if ($dir eq '');
    if (opendir (DIR, $dir)) {
      foreach my $file (grep { /^$quoted_l2h_name/ } readdir(DIR)) {
      # FIXME error condition not checked
        unlink File::Spec->catpath($docu_volume, $docu_directories, $file);
      }
    }
  }
  warn "# l2h: Finished\n" if $verbose;
  return 1;
}

##############################
# stuff for l2h caching
#
# FIXME it is clear that l2h stuff takes very long compared with texi2any
# which is already quite long. However this also adds some complexity 

# I tried doing this with a dbm data base, but it did not store all
# keys/values. Hence, I did as latex2html does it
sub l2h_init_cache($)
{
  my $self = shift;
  if (-r $l2h_cache_file) {
    my $rdo = do "$l2h_cache_file";
    $self->document_error($self,
               sprintf(__("l2h: could not load %s: %s"),
                                  $l2h_cache_file, $@))
      unless ($rdo);
  }
}

# store all the text obtained through latex2html
sub l2h_store_cache($)
{
  my $self = shift;
  return unless $latex_count;
  my ($key, $value);
  unless (open(FH, ">$l2h_cache_file")) { 
    $self->document_error($self,
          sprintf(__("l2h: could not open %s for writing: %s"),
                                  $l2h_cache_file, $!));
    return;
  }
  foreach my $key(sort(keys(%l2h_cache))) {
  #while (($key, $value) = each %l2h_cache) {
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
  print FH "1;";
  close (FH);
}

# return cached html, if it exists for text, and if all pictures
# are there, as well
sub l2h_from_cache($)
{
  my $text = shift;
  my $cached = $l2h_cache{$text};
  if (defined($cached)) {
    while ($cached =~ m/SRC="(.*?)"/g) {
      unless (-e File::Spec->catpath($docu_volume, $docu_directories, $1)) {
        return undef;
      }
    }
    return $cached;
  }
  return undef;
}

1;
