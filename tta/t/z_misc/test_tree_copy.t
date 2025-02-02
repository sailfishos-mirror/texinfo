use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 7; }

use Data::Dumper;
use File::Spec;
#use Text::Diff;

use Texinfo::Parser;
use Texinfo::Convert::Texinfo;
use Texinfo::ManipulateTree;
use Texinfo::Structuring;

my $t2a_srcdir = $ENV{'srcdir'};
# fallback based on Texinfo::ModulePath $t2a_srcdir
if (!defined($t2a_srcdir) and defined($Texinfo::ModulePath::t2a_srcdir)) {
  $t2a_srcdir = $Texinfo::ModulePath::t2a_srcdir;
}

if (defined($t2a_srcdir)) {
  $t2a_srcdir =~ s/\/*$/\//;
} else {
  $t2a_srcdir = '.';
}

my $debug = 0;
#my $debug = 1;

my $with_XS = ((not defined($ENV{TEXINFO_XS})
                or $ENV{TEXINFO_XS} ne 'omit')
               and (!defined $ENV{TEXINFO_XS_PARSER}
                    or $ENV{TEXINFO_XS_PARSER} eq '1'));

ok(1, 'modules loading');

# FIXME does not test the XS code
# a tree with a reference seen after one within the extra tree.
# Not sure that it exists in real trees, so check it here
my $tref = {'type' => 'document_root',
            'contents' => [{'text' => 'x'},
                           {'type' => 'paragraph',
                            'extra' => {'thing' =>
                              {'type' => 'container',
                               'contents' => [{'type' => 'e1',
                                              'extra' => {}}
                                             ]
                              }
                             }
                            },
                            {'text' => "\n"},
                           ]
            };

$tref->{'contents'}->[1]->{'extra'}->{'thing'}->{'contents'}->[0]->{'extra'}->{'ref'}
  = $tref->{'contents'}->[0];

my $tref_texi = Texinfo::Convert::Texinfo::convert_to_texinfo($tref);

my $tref_copy = Texinfo::ManipulateTree::copy_treeNonXS($tref);

my $tref_copy_texi = Texinfo::Convert::Texinfo::convert_to_texinfo($tref_copy);

# Does not test much as the reference in extra does not appear in the
# output.  Not a big deal, what is important it so see if there are error
# messages.

is($tref_texi, $tref_copy_texi, 'ref within extra tree');

my $text = '@setfilename some@@file.ext

@node top
@top in @code{top}

@set truc blah@@@

@menu
Something

* chapter::    description
* name: other chapter.
* lone node::
* (manual) ext node::
@end menu

@node chapter
@chapter chap

@part part
@node other chapter, lone node, chapter, Top
@chapter other chap

@node lone node, ,other chapter, Top

@vtable @code
@item item
@end vtable

@multitable @columnfractions 0.8 0.2
@end multitable

@multitable {trc} {bidule}
@item truc @tab bidule
@end multitable

@deffn a@var{n} {b} c d e@code{r}f (c, d) {(e f)}
@end deffn

@documentlanguage fr

@defivar hr @samp{BBB} CCC
@end defivar

@float label, type
@caption{float caption}
@end float

@listoffloats type

@acronym{ABC, a b ccc}.

@cindex cindex

@set txiindexlessthanignore
@vindex v<index

@printindex cp

@quotation trc
@author an authoe
@author second
T
@end quotation

';

my $test_parser = Texinfo::Parser::parser();
my $document = Texinfo::Parser::parse_texi_piece($test_parser, $text);
my $tree = $document->tree();
my $copy = Texinfo::ManipulateTree::copy_tree($tree);

my $texi_tree = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);

is($text, $texi_tree, 'tree to texi and original match');

my $texi_copy = Texinfo::Convert::Texinfo::convert_to_texinfo($copy);
is($texi_copy, $texi_tree, 'tree and copy to texi match');

# set sectioning structure and redo a copy
Texinfo::Structuring::sectioning_structure($document);
# rebuild the tree
$tree = $document->tree();

my $copy_with_sec = Texinfo::ManipulateTree::copy_tree($tree);

my $texi_tree_with_sec = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
my $texi_copy_with_sec
  = Texinfo::Convert::Texinfo::convert_to_texinfo($copy_with_sec); 
is($texi_tree_with_sec, $texi_copy_with_sec,
   'tree after sectioning and copy to texi match');

my $updir = File::Spec->updir();
my $manual_file = join('/', ($t2a_srcdir, $updir, 'doc', 'texinfo.texi'));
my $manual_include_dir = join('/', ($t2a_srcdir, $updir, 'doc'));
#print STDERR "$manual_file $manual_include_dir\n";

my $coverage_file = join('/', ($t2a_srcdir, 'tests',
                               'coverage', 'formatting.texi'));
my $coverage_include_dir = join('/', ($t2a_srcdir, 'tests'));

foreach my $file_include (['Texinfo', $manual_file, $manual_include_dir],
                          ['formatting', $coverage_file, $coverage_include_dir]) {
  my ($label, $test_file, $test_include_dir) = @$file_include;
  print STDERR "$label\n" if ($debug);
  my $test_parser
   = Texinfo::Parser::parser({'INCLUDE_DIRECTORIES' => [$test_include_dir]});
  my $document = $test_parser->Texinfo::Parser::parse_texi_file($test_file);
  my $texinfo_test_tree = $document->tree();
  my ($test_parser_errors, $test_parser_error_count) = $document->parser_errors();
  foreach my $error_message (@$test_parser_errors) {
    warn "$label: ".$error_message->{'error_line'}
      if ($debug);
  }
  my $test_tree_copy = Texinfo::ManipulateTree::copy_tree($texinfo_test_tree);

  my $test_texi
     = Texinfo::Convert::Texinfo::convert_to_texinfo($texinfo_test_tree);

  my $texi_test_copy
     = Texinfo::Convert::Texinfo::convert_to_texinfo($test_tree_copy);

  is($test_texi, $texi_test_copy, 'manual tree and copy to texi match');
  #print STDERR $test_texi_copy;
}

#{
#  local $Data::Dumper::Purity = 1;
#  local $Data::Dumper::Indent = 1;
#  print STDERR Data::Dumper->Dump([$copy]);
#}


1;
