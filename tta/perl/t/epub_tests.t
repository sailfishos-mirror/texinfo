use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my $XS_convert = Texinfo::XSLoader::XS_convert_enabled();

my @file_tests = (
# also in *sectioning.t.  Here we are interested by testing spaces
# in filenames.
['setfilename_on_top_and_after_node_epub',
'@node Top
@top In top @setfilename very badly placed setfilename

@setfilename a bit too late
', {'init_files' => ['epub3.pm'],
    'test_input_file_name' => 'very badly placed setfilename.texi'},],
# test for the nav file
['chapter_before_top_epub',
'@node Top

@node chapter
@chapter chapter

@part part

@top top
', {'init_files' => ['epub3.pm']},],
['section_part_epub',
'@node Top
@section section

@part part
', {'init_files' => ['epub3.pm']},],
['epub_conditional',
'@documentinfo
@title title
@ifepub
@subtitle A book
@end ifepub
@ifnotepub
@subtitle Online
@end ifnotepub
@end documentinfo

@maketitle

@node Top
@top top

@node chapter
@chapter Chap

@ifepub
@html
<section role="doc-part" aria-labelledby="p1">
@end html
@end ifepub

Some content

@ifepub
@html
</section>
@end html
@end ifepub
', {'init_files' => ['epub3.pm']},],
['epub_inline_conditional',
'
@node Top
@top top

@node chapter
@chapter Chap

Text @inlinefmt{epub, here if EPUB}.
Format @inlineraw{epub, <section>raw EPUB</section>}.
', {'init_files' => ['epub3.pm']},],
);

foreach my $test (@file_tests) {
  push @{$test->[2]->{'test_formats'}}, 'file_epub';
  $test->[2]->{'test_input_file_name'} = $test->[0] . '.texi'
    unless (exists($test->[2]->{'test_input_file_name'}));
  $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
}

run_all('epub_tests', [@file_tests]);
