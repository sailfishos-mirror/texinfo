use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 3);

use Test::More;

BEGIN { plan tests => 7; }

use Texinfo::Parser;
use Texinfo::Convert::Texinfo;
use Texinfo::Document;
use Texinfo::ManipulateTree;
use Texinfo::DebugTree;

ok(1, 'modules loading');

sub run_test($$$)
{
  my $in = shift;
  my $out = shift;
  my $name = shift;

  my $parser = Texinfo::Parser::parser();
  my $document = $parser->parse_texi_piece($in);
  my $tree = $document->tree();

  #print STDERR Texinfo::DebugTree::convert_tree(undef, $tree)."\n";

  Texinfo::ManipulateTree::move_index_entries_after_items_in_document($document);
  # rebuild tree
  $tree = $document->tree();

  my $texi_result = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);

  if (!defined($out)) {
    print STDERR " --> $name:\n$texi_result";
  } else {
    is($texi_result, $out, $name);
  }
}

run_test ('@itemize

@c comment
@cindex index entry
@item first

in item
@c comment before index entry
@cindex index in paragraph
@item second 

@cindex index before comment
@c comment between index entries
@cindex after comment
@item 
third
@end itemize
', '@itemize

@c comment
@item 
@cindex index entry
first

in item
@c comment before index entry
@item 
@cindex index in paragraph
second 

@item 
@cindex index before comment
@c comment between index entries
@cindex after comment
third
@end itemize
', 'entries before items');

run_test ('@example

@enumerate

@cindex idx
@item it

@cindex ttt
@c comment
@item 
two

@c c
@cindex gg
@item

@end itemize
@end example
','@example

@enumerate

@item 
@cindex idx
it

@item 
@cindex ttt
@c comment
two

@c c
@item
@cindex gg

', 'in example');

run_test('
@itemize
@cindex gg
@item
@item
@item
@end itemize
', '
@itemize
@item
@item
@item
@cindex gg
@end itemize
', 'empty_items');

run_test('
@itemize
@cindex gg
@item
@c comment
@item
@cindex inter
@item
@c comment
@item
@cindex c
@item
in item
@end itemize
', '
@itemize
@item
@item
@item
@item
@item
@cindex gg
@c comment
@cindex inter
@c comment
@cindex c
in item
@end itemize
', 'only comments and index entries in items');

run_test('@itemize i
@c comment in itemize
@item e--mph item
@end itemize
', '@itemize i
@c comment in itemize
@item e--mph item
@end itemize
', 'only comment');

run_test('@enumerate
@cindex pattern @subentry variable
@item
Set the variable
@end enumerate
', '@enumerate
@item
@cindex pattern @subentry variable
Set the variable
@end enumerate
', 'subentry');
