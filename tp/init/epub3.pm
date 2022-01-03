# -*-perl-*-

# epub3.pm: setup an EPUB publication
#
#    Copyright 2021 Free Software Foundation, Inc.
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
# Originally written by Patrice Dumas.
#
# Note that OUTFILE is used for the epub file, but it is reset for
# the conversion to XHTML.
#
# TODO:
# split or not split?
# set up a cover with @titlepage?
# is the mini_toc relevant?
# what about node directions?
# use the navigation information as a page instead of texi2any generated TOC?
# separate TOC after titlepage?
# indices?
# cross manual references?
# list of tables/list of floats
# add landmarks?  Examples: epub:type="toc", epub:type="loi" (list of illustrations)
#                           epub:type="bodymatter" (Start of Content)

use strict;

use File::Path;
use File::Spec;
use File::Copy;

# for fileparse
use File::Basename;

# the Archive::Zip module is required below only if needed, that is
# if EPUB_CREATE_CONTAINER is set.
#use Archive::Zip;

use Texinfo::Common;

my $epub_format_version = '3.2';

# used in tests to avoid creating the .epub file.
texinfo_add_valid_customization_option('EPUB_CREATE_CONTAINER');
texinfo_set_from_init_file('EPUB_CREATE_CONTAINER', 1);

texinfo_set_format_from_init_file('html');

# output valid XHTML
texinfo_set_from_init_file('HTML_ROOT_ELEMENT_ATTRIBUTES',
                           'xmlns="http://www.w3.org/1999/xhtml"');
texinfo_set_from_init_file('NO_CUSTOM_HTML_ATTRIBUTE', 1);
texinfo_set_from_init_file('USE_XML_SYNTAX', 1);
texinfo_set_from_init_file('DOCTYPE', '<?xml version="1.0" encoding="UTF-8"?>'."\n"
                                      .'<!DOCTYPE html>');
texinfo_set_from_init_file('USE_NUMERIC_ENTITY', 1);

# the copiable anchor paragraph sign is always present and no link is
# shown in the calibre epub reader.  Since it looks strange, unset.
texinfo_set_from_init_file('COPIABLE_ANCHORS', 0);

# this is for the XHTML formatting, the .epub extension is
# also used hardcoded for the container.
texinfo_set_from_init_file('EXTENSION', 'xhtml');

texinfo_set_from_init_file('JS_WEBLABELS_FILE', 'js_licenses.xhtml');

texinfo_set_from_init_file('TOP_FILE', undef);
# no redirections files
texinfo_set_from_init_file('NODE_FILES', 0);

my $epub_images_dir_name = 'images';
texinfo_set_from_init_file('IMAGE_LINK_PREFIX', "../${epub_images_dir_name}/");

#texinfo_set_from_init_file('contents', 1);

texinfo_set_from_init_file('DEFAULT_RULE', '');
texinfo_set_from_init_file('BIG_RULE', '');
texinfo_set_from_init_file('HEADERS', 0);

texinfo_register_formatting_function('format_navigation_header', \&epub_noop);
texinfo_register_formatting_function('format_navigation_header_panel', \&epub_noop);

texinfo_register_command_formatting('image', \&epub_convert_image_command);

texinfo_register_type_formatting('unit', \&epub_convert_tree_unit_type);

my %epub_images_extensions_mimetypes = (
  '.png' =>  ' image/png',
  '.jpg' => 'image/jpeg',
  '.jpeg' => 'image/jpeg',
  '.gif' => 'image/gif',
);

my %epub_js_extensions_mimetypes = (
  '.js', 'text/javascript',
  '.css', 'text/css',
);

sub _epub_convert_tree_to_text($$;$)
{
  my $converter = shift;
  my $tree = shift;
  my $options = shift;

  $options = {} if (!defined($options));

  return $converter->protect_text(
    Texinfo::Convert::Text::convert_to_text($tree,
   {Texinfo::Convert::Text::copy_options_for_convert_text($converter),
     %$options}));
}

sub epub_noop($$)
{
  return '';
}

# file scope variables
my $epub_destination_directory;
my $epub_document_destination_directory; 

my $epub_document_dir_name = 'EPUB';

my %epub_images;

# collect and copy images
# FIXME if the file is given by a path, the path will be included in the
# destination too, but the directory path will not be created, so it
# will fail.
sub epub_convert_image_command($$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $command = shift;
  my $args = shift;

  my $result = &{$self->default_commands_conversion($cmdname)}($self,
                                                 $cmdname, $command, $args);

  my ($image_file, $image_basefile, $image_extension, $image_path)
      = $self->html_image_file_location_name($cmdname, $command, $args);
  if (defined($image_file)) {
    if (not defined($image_path)) {
      $self->document_error($self,
            sprintf(__("\@image file `%s' can not be copied"),
                   $image_basefile));
    } else {
      my $images_destination_dir
               = File::Spec->catdir($epub_destination_directory,
                                    $epub_document_dir_name, $epub_images_dir_name);
      if (! -d $images_destination_dir) {
        if (!mkdir($images_destination_dir, oct(755))) {
          $self->document_error($self, sprintf(__(
                                 "could not create directory `%s': %s"),
                                         $images_destination_dir, $!));
          return $result;
        }
      }
      my $image_destination_path = File::Spec->catfile($images_destination_dir,
                                                       $image_file);
      my $copy_succeeded = copy($image_path, $image_destination_path);
      if (not $copy_succeeded) {
        $self->document_error($self, sprintf(__(
                            "could not copy `%s' to `%s': %s"),
                            $image_path, $image_destination_path, $!));
      }
      $epub_images{$image_file} = $image_extension;
    }
  }
  return $result;
}

my @epub_output_filenames;
# collect filenames in units order
sub epub_convert_tree_unit_type($$$$)
{
  my $self = shift;
  my $type = shift;
  my $element = shift;
  my $content = shift;

  push @epub_output_filenames, $element->{'filename'};
  return &{$self->default_types_conversion($type)}($self,
                                      $type, $element, $content);
}

my $epub_xhtml_dir = 'xhtml';
# should not clash with generated files.  Could clash with
# OUTFILE but it is explicitly handled.
my $default_nav_filename = 'nav_toc.xhtml';
my $nav_filename;

my $epub_outfile;

my $epub_info_js_dir_name;

sub epub_setup($)
{
  my $self = shift;

  @epub_output_filenames = ();
  %epub_images = ();
  $nav_filename = $default_nav_filename;
  
  $epub_info_js_dir_name = undef;
  if ($self->get_conf('INFO_JS_DIR')) {
    # re-set INFO_JS_DIR up to have the javascript and
    # css files in a directory rooted at $epub_document_dir_name
    $epub_info_js_dir_name = $self->get_conf('INFO_JS_DIR');
    # FIXME INFO_JS_DIR is used both as a filesystem directory name
    # and as path in document, as a path in document '../' should be
    # used whatever File::Spec->updir() is.
    my $updir = File::Spec->updir();
    $self->force_conf('INFO_JS_DIR', File::Spec->catdir($updir,
                                                  $epub_info_js_dir_name));
    # TODO make sure it is SPLIT and set SPLIT if not?
  }

  # determine main epub directory and directory for xhtml files,
  # reset OUTFILE and SUBDIR to match with the epub directory
  # for XHTML output
  
  if (defined($self->get_conf('OUTFILE'))) {
    $epub_outfile = $self->get_conf('OUTFILE');
    # if not undef, will be used as directory name in
    # determine_files_and_directory() which does not make sense
    if ($self->get_conf('SPLIT')) {
      $self->force_conf('OUTFILE', undef);
    }
  }
  my ($output_file, $destination_directory, $output_filename,
              $document_name) = $self->determine_files_and_directory();
  if (not defined($epub_outfile)) {
    $epub_outfile = ${document_name}.'.epub';
  }
  # the $epub_destination_directory is removed automatically,
  # so we try to set it to a directory that the user would not create
  # nor populate with files.
  if (defined($self->get_conf('SUBDIR'))) {
    $epub_destination_directory = File::Spec->catdir($self->get_conf('SUBDIR'),
                                          $document_name . '_epub_package');
  } elsif ($self->get_conf('SPLIT')) {
    $epub_destination_directory = $destination_directory . '_epub_package';
  } else {
    $epub_destination_directory = $document_name . '_epub_package';
  }
  $epub_document_destination_directory
             = File::Spec->catdir($epub_destination_directory,
                                  $epub_document_dir_name, $epub_xhtml_dir);
  # set for XHTML conversion
  if ($self->get_conf('SPLIT')) {
    $self->force_conf('SUBDIR', $epub_document_destination_directory);
    $self->force_conf('OUTFILE', undef);
  } else {
    my $xhtml_output_file = $document_name;
    $xhtml_output_file .= '.'.$self->get_conf('EXTENSION')
        if (defined($self->get_conf('EXTENSION'))
            and $self->get_conf('EXTENSION') ne '');
    # to avoid a clash with nav file name
    if ($xhtml_output_file eq $default_nav_filename) {
      $nav_filename = 'Gtexinfo_' . $default_nav_filename;
    }
    $self->force_conf('OUTFILE',
     File::Spec->catfile($epub_document_destination_directory, $xhtml_output_file));
  }

  my $err_remove_tree;
  File::Path::remove_tree($epub_destination_directory,
                          {'error' => $err_remove_tree});
  if ($err_remove_tree and scalar(@$err_remove_tree)) {
    for my $diag (@$err_remove_tree) {
      my ($file, $message) = %$diag;
      if ($file eq '') {
        $self->document_error($self,
           sprintf(__("error removing directory: %s: %s"),
                   $epub_destination_directory, $message));
      }
      else {
        $self->document_error($self,
          sprintf(__("error removing directory: %s: unlinking %s: %s"),
                  $epub_destination_directory, $file, $message));
      }
    }
    return 0;
  }
  my $err_make_path;
  File::Path::make_path($epub_document_destination_directory,
                        {'mode' => 0755, 'error' => $err_make_path});
  if ($err_make_path and scalar(@$err_make_path)) {
    for my $diag (@$err_make_path) {
      my ($file, $message) = %$diag;
      if ($file eq '') {
        $self->document_error($self,
           sprintf(__("error creating directory: %s: %s"),
                  $epub_document_destination_directory, $message));
      }
      else {
        $self->document_error($self,
          sprintf(__("error creating directory: %s: creating %s: %s"),
                 $epub_document_destination_directory, $file, $message));
      }
    }
    return 0;
  }
  return 1;
}

texinfo_register_handler('setup', \&epub_setup);

# need to be after tree units and images conversion
sub epub_finish($$)
{
  my $self = shift;
  my $document_root = shift;

  if (scalar(@epub_output_filenames) == 0) {
    if (defined($self->{'filename'})) {
      push @epub_output_filenames, $self->{'filename'};
    } else {
      $self->document_warn($self,
        __("epub: no filename output"));
    }
  }

  my $meta_inf_directory_name = 'META-INF';
  my $meta_inf_directory = File::Spec->catdir($epub_destination_directory,
                                              $meta_inf_directory_name);
  if (!mkdir($meta_inf_directory, oct(755))) {
    $self->document_error($self, sprintf(__(
                                 "could not create directory `%s': %s"),
                                         $meta_inf_directory, $!));
    return 0;
  }
  my $container_file = File::Spec->catfile($meta_inf_directory,
                                           'container.xml');
  my $container_fh = Texinfo::Common::output_files_open_out(
               $self->output_files_information(), $self, $container_file,
               undef, 'utf-8');
  if (!defined($container_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: could not open %s for writing: %s\n"),
                  $container_file, $!));
    return 0;
  }
  my $document_name = $self->{'document_name'};
  my $opf_filename = $document_name . '.opf';
  print $container_fh <<EOT;
<?xml version="1.0"?>
<container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
    <rootfiles>
        <rootfile full-path="${epub_document_dir_name}/${opf_filename}"
            media-type="application/oebps-package+xml" />	
    </rootfiles>
</container>
EOT

  Texinfo::Common::output_files_register_closed(
    $self->output_files_information(), $container_file);
  if (!close ($container_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: error on closing %s: %s"),
                          $container_file, $!));
    return 0;
  }

  my $mimetype_filename = 'mimetype';
  my $mimetype_file = File::Spec->catfile($epub_destination_directory,
                                          $mimetype_filename);
  my $mimetype_fh = Texinfo::Common::output_files_open_out(
               $self->output_files_information(), $self, $mimetype_file,
               undef, 'utf-8');
  if (!defined($mimetype_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: could not open %s for writing: %s\n"),
                  $mimetype_file, $!));
    return 0;
  }
  print $mimetype_fh 'application/epub+zip'."\n";

  Texinfo::Common::output_files_register_closed(
    $self->output_files_information(), $mimetype_file);
  if (!close ($mimetype_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: error on closing %s: %s"),
                          $mimetype_file, $!));
    return 0;
  }
  my $nav_id = 'nav';
  my $nav_file;
  my $title = _epub_convert_tree_to_text($self, $self->{'title_tree'});
  if ($self->{'structuring'} and $self->{'structuring'}->{'sectioning_root'}) {
    $nav_file = File::Spec->catfile($epub_document_destination_directory,
                                           $nav_filename);
    my $nav_fh = Texinfo::Common::output_files_open_out(
                 $self->output_files_information(), $self, $nav_file,
                 undef, 'utf-8');
    if (!defined($nav_fh)) {
      $self->document_error($self,
           sprintf(__("epub3.pm: could not open %s for writing: %s\n"),
                    $nav_file, $!));
      return 0;
    }
    my $table_of_content_str = _epub_convert_tree_to_text($self,
                                             $self->gdt('Table of contents'));
    my $nav_file_title = $title.' - '.$table_of_content_str;
    print $nav_fh <<EOT;
<?xml version="1.0" encoding="utf-8"?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">
<head>
<meta charset="utf-8" />
<title>$nav_file_title</title>
</head>
<body>
<nav epub:type="toc" id="$nav_id">
<h1>$table_of_content_str</h1>
EOT

    # similar code as in chm.pm
    my $section_root = $self->{'structuring'}->{'sectioning_root'};
    my $upper_level = $section_root->{'structure'}->{'section_childs'}->[0]
                                            ->{'structure'}->{'section_level'};
    foreach my $top_section (@{$section_root->{'structure'}->{'section_childs'}}) {
      $upper_level = $top_section->{'structure'}->{'section_level'}
      if ($top_section->{'structure'}->{'section_level'} < $upper_level);
    }
    $upper_level = 1 if ($upper_level <= 0);
    my $root_level = $upper_level - 1;
    my $level = $root_level;
    foreach my $section (@{$self->{'structuring'}->{'sections_list'}}) {
      next if ($section->{'cmdname'} eq 'part');
      my $section_level = $section->{'structure'}->{'section_level'};
      $section_level = 1 if ($section_level == 0);
      # FIXME with gaps in sectioning there could be nesting issues?
      if ($level < $section_level) {
        while ($level < $section_level) {
          my $leading_spaces = '';
          print $nav_fh "\n". " " x $level . "<ol>\n";
          $level++;
        }
      } elsif ($level > $section->{'structure'}->{'section_level'}) {
        # on the same line as the a element for the first </li>
        print $nav_fh "</li>\n". " " x ($level -1) . "</ol>\n";
        $level--;
        while ($level > $section_level) {
          print $nav_fh " " x $level . "</li>\n". " " x ($level -1) . "</ol>\n";
          $level--;
        }
        print $nav_fh " " x $level ."</li>\n";
      } else {
        print $nav_fh "</li>\n";
      }
      my $text = _epub_convert_tree_to_text($self, $section->{'args'}->[0]);
      $text = Texinfo::Convert::Utils::numbered_heading($self, $section, $text,
                          $self->get_conf('NUMBER_SECTIONS'));
      my $file = $self->command_filename($section);
      my $anchor = $self->command_target($section);
      my $origin_href = "$file#$anchor";
      print $nav_fh " " x $level . "<li><a href=\"$origin_href\">$text</a>";
    }
    if ($level > $root_level) {
      # on the same line as the a element for the first </li>
      print $nav_fh "</li>\n". " " x ($level -1) . "</ol>\n";
      $level--;
    }
    while ($level > $root_level) {
      print $nav_fh " " x $level . "</li>\n". " " x ($level -1) . "</ol>\n";
      $level--;
    }

    print $nav_fh '</nav>'."\n";
    # TODO add landmarks?
    print $nav_fh '</body>'."\n".'</html>'."\n";

    Texinfo::Common::output_files_register_closed(
      $self->output_files_information(), $nav_file);
    if (!close ($nav_fh)) {
      $self->document_error($self,
           sprintf(__("epub3.pm: error on closing %s: %s"),
                            $nav_file, $!));
      return 0;
    }
  }


  my $unique_uid = 'texi-uid';
  # TODO to discuss on bug-texinfo
  my $identifier = 'texinfo:'.$document_name;
  # also to discuss
  # <meta property="dcterms:modified">2012-03-05T12:47:00Z</meta>
  # also <dc:rights>
  my $opf_file = File::Spec->catfile($epub_destination_directory,
                                        $epub_document_dir_name, $opf_filename );
  my $opf_fh = Texinfo::Common::output_files_open_out(
               $self->output_files_information(), $self, $opf_file,
               undef, 'utf-8');
  if (!defined($opf_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: could not open %s for writing: %s\n"),
                  $opf_file, $!));
    return 0;
  }
  print $opf_fh <<EOT;
<?xml version="1.0" encoding="UTF-8"?>
<package xmlns="http://www.idpf.org/2007/opf" version="$epub_format_version" unique-identifier="$unique_uid">
   <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
      <dc:identifier id="$unique_uid">$identifier</dc:identifier>
      <dc:title>$title</dc:title>
EOT
  my @relevant_commands = ('author', 'documentlanguage');
  my $collected_commands = Texinfo::Common::collect_commands_list_in_tree(
                                        $document_root, \@relevant_commands);
  my @authors = ();
  my @languages = ();
  if (scalar(@{$collected_commands})) {
    foreach my $element (@{$collected_commands}) {
      my $command = $element->{'cmdname'};
      if ($command eq 'author') {
        if ($element->{'extra'}->{'titlepage'}
             and $element->{'args'}->[0]->{'contents'}) {
          my $author_str = _epub_convert_tree_to_text($self,
               {'contents' => $element->{'args'}->[0]->{'contents'}});
          if ($author_str =~ /\S/) {
            push @authors, $author_str;
          }
        }
      } else {
        if (defined($element->{'extra'}->{'text_arg'})) {
          # TODO the EPUB specification describes specific language
          # tags.  Not sure there is not a need for some mapping here.
          push @languages, $element->{'extra'}->{'text_arg'};
        }
      }
    }
  }
  foreach my $author (@authors) {
    print $opf_fh "<dc:creator>$author</dc:creator>\n";
  }
  foreach my $language (@languages) {
    print $opf_fh "<dc:language>$language</dc:language>\n";
  }
  print $opf_fh <<EOT;
   </metadata>
   <manifest>
EOT

  if (defined($nav_file)) {
    print $opf_fh "      <item id=\"$nav_id\" properties=\"nav\" "
      . "media-type=\"application/xhtml+xml\" href=\"${epub_xhtml_dir}/${nav_filename}\"/>\n";
  }
  my $spine_uid_str = 'unit';
  my @output_filename_ids = ();
  my $id_count = 0;
  foreach my $output_filename (@epub_output_filenames) {
    $id_count++;
    my $properties_str = '';
    if ($self->get_conf('INFO_JS_DIR')) {
      $properties_str = ' properties="scripted"'
    }
    print $opf_fh "      <item id=\"${spine_uid_str}${id_count}\" "
     . "media-type=\"application/xhtml+xml\" href=\"${epub_xhtml_dir}/${output_filename}\"${properties_str}/>\n";
  }
  my $js_weblabels_id;
  if ($self->get_conf('JS_WEBLABELS_FILE')) {
    my $js_weblabels_file_name = $self->get_conf('JS_WEBLABELS_FILE');
    my $js_licenses_file_path = File::Spec->catfile($epub_document_destination_directory,
                                                    $js_weblabels_file_name);
    if (-e $js_licenses_file_path) {
      $js_weblabels_id = 'jsweblabels';
      print $opf_fh "      <item id=\"${js_weblabels_id}\" "
     . "media-type=\"application/xhtml+xml\" href=\"${epub_xhtml_dir}/${js_weblabels_file_name}\"/>\n";
    }
  }
  my $image_count = 0;
  foreach my $image_file (sort keys(%epub_images)) {
    $image_count++;
    my $image_extension = $epub_images{$image_file};
    my $image_mimetype;
    if (defined($epub_images_extensions_mimetypes{$image_extension})) {
      $image_mimetype = $epub_images_extensions_mimetypes{$image_extension};
    } else {
      my $extension = $image_extension;
      $extension =~ s/^\.//;
      $image_mimetype = $extension . '/image';
    }
    print $opf_fh "      <item id=\"image${image_count}\" "
      . "media-type=\"${image_mimetype}\" href=\"${epub_images_dir_name}/${image_file}\"/>\n";
  }
  if (defined($epub_info_js_dir_name)) {
    my $info_js_destination_dir
               = File::Spec->catdir($epub_destination_directory,
                                    $epub_document_dir_name, $epub_info_js_dir_name);
    my $opendir_success = opendir(JSPATH, $info_js_destination_dir);
    if (not $opendir_success) {
      $self->document_error($self,
           sprintf(__("epub3.pm: readdir %s error: %s"),
                          $info_js_destination_dir, $!));
    } else {
      my $js_count = 0;
      foreach my $filename (sort(readdir(JSPATH))) {
        my ($parsed_filename, $parsed_directory, $suffix)
             = fileparse($filename, keys(%epub_js_extensions_mimetypes));
        if (defined($suffix) and $suffix ne '') {
          $js_count++;
          my $js_mimetype = $epub_js_extensions_mimetypes{$suffix};
          print $opf_fh "      <item id=\"infojs${js_count}\" "
  . "media-type=\"${js_mimetype}\" href=\"${epub_info_js_dir_name}/${filename}\"/>\n";
        }
      }
      closedir(JSPATH);
    }
  }
  print $opf_fh <<EOT;
   </manifest>
   <spine>
EOT

  # To put the nav file as part of the document
  #if (defined($nav_file)) {
  #  print $opf_fh "      <itemref idref=\"${nav_id}\"/>\n";
  #}
  $id_count = 0;
  foreach my $output_filename (@epub_output_filenames) {
    $id_count++;
    print $opf_fh "      <itemref idref=\"${spine_uid_str}${id_count}\"/>\n";
  }
  # Depending on the reader, the js_labels file should better be in the <spine> or
  # not.  The standard allows both showing the linear="no" elements as part
  # of the default reading order or not.  It is probably better for the
  # js_labels to be in the spine if they can be viewed in any way.
  # Foliate does not show the js_labels file upon clicking if not in
  # the <spine>.
  # Calibre shows the js_labels file upon clicking if not in the <spine>, and
  # steps in the js_labels file if in the spine.
  if (defined($js_weblabels_id)) {
    print $opf_fh "      <itemref idref=\"${js_weblabels_id}\" linear=\"no\"/>\n";
  }

  print $opf_fh <<EOT;
   </spine>
</package>
EOT

  Texinfo::Common::output_files_register_closed(
    $self->output_files_information(), $opf_file);
  if (!close ($opf_fh)) {
    $self->document_error($self,
         sprintf(__("epub3.pm: error on closing %s: %s"),
                          $opf_file, $!));
    return 0;
  }

  if ($self->get_conf('EPUB_CREATE_CONTAINER')) {
    require Archive::Zip;

    my $zip = Archive::Zip->new();
    $zip->addFile($mimetype_file, $mimetype_filename);
    $zip->addTree($meta_inf_directory, $meta_inf_directory_name);
    $zip->addTree(File::Spec->catdir($epub_destination_directory,
                                     $epub_document_dir_name),
                  $epub_document_dir_name);

    unless ($zip->writeToFileNamed($epub_outfile) == Archive::Zip->AZ_OK) {
      $self->document_error($self,
           sprintf(__("epub3.pm: error writing archive %s"),
                   $epub_outfile));
      return 0;
    }
  }
  return 1;
}

texinfo_register_handler('finish', \&epub_finish);

1;
