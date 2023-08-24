use strict;

use Test::More;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

BEGIN { plan tests => 27; }

use Texinfo::Parser;
use Texinfo::Transformations;
use Texinfo::Convert::Texinfo;

use Data::Dumper;

ok(1);

# FIXME tests in test_new_node do not test the transformations XS codes
sub test_new_node($$$$)
{
  my $in = shift;
  my $normalized_ref = shift;
  my $out = shift;
  my $name = shift;

  my $parser = Texinfo::Parser::parser();
  my $node_tree = $parser->parse_texi_line ($in);
  my $registrar = $parser->registered_errors();
  my $document = $parser->parse_texi_text ('');
  my $identifier_target = $document->labels_information();
  Texinfo::Structuring::associate_internal_references($registrar, $parser,
                                                      $document);
  my $node = Texinfo::Transformations::_new_node($node_tree, $document);

  my ($texi_result, $normalized);
  if (defined($node)) {
    $texi_result = Texinfo::Convert::Texinfo::convert_to_texinfo($node);
    Texinfo::Structuring::associate_internal_references($registrar, $parser,
                                                        $document);
    $normalized = $node->{'extra'}->{'normalized'};
    my @identifiers = sort(keys(%$identifier_target));
    if (scalar(@identifiers) != 1) {
      print STDERR " $name identifiers: !! ".join("|", @identifiers)."\n";
    }
    ok ((scalar(@identifiers) == 1 and $identifiers[0] eq $normalized),
        "$name label");
  }
  if (!defined($normalized_ref) and defined($normalized)) {
    print STDERR " --> $name($normalized): $texi_result";
  } else {
    is ($normalized, $normalized_ref, "$name normalized");
    is ($texi_result, $out, $name);
  }
}

test_new_node ('a node', 'a-node', '@node a node
', 'simple');
test_new_node ('a node @code{in code} @c comment
', 'a-node-in-code', '@node a node @code{in code} @c comment
', 'complex');
test_new_node ('a ,, node @code{a,b,}', 'a-_002c_002c-node-a_002cb_002c',
'@node a @comma{}@comma{} node @code{a@comma{}b@comma{}}
', 'with comma');
test_new_node ('(in paren(too  aaa', '_0028in-paren_0028too-aaa',
'@node @asis{(}in paren(too  aaa
', 'with parenthesis');
test_new_node ('changed @ref{ @code{node}} and (@pxref{ ,, , @samp{file}})',
'changed-node-and-_0028file_0029',
'@node changed @code{node} and (@samp{file})
',
'ref in new node');
test_new_node ('@asis{}', '-1', '@node @asis{} 1
', 'empty node');
test_new_node ('a::b	 c', 'a_003a_003ab-c', '@node a@asis{::}b@asis{	} c
', 'with colon and tab');

my $parser = Texinfo::Parser::parser();
my $document = $parser->parse_texi_text('@node a node
');
my $tree = $document->tree();
my $registrar = $parser->registered_errors();
my $line_tree = Texinfo::Parser::parse_texi_line (undef, 'a node');
my $node = Texinfo::Transformations::_new_node($line_tree, $document);
is ('@node a node 1
',  Texinfo::Convert::Texinfo::convert_to_texinfo($node), 'duplicate node added');
#print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($node);

my $sections_text =
'@top top section

@part part

@chapter chap, @code{a chap}

@node a node
@section section

@section truc
@subsection sub1

Text.

@subsection sub2 @c comment

@section section

@section section

@unnumbered

@section @asis{}

@bye';

my $reference =
'@node Top
@top top section

@part part

@node chap@comma{} @code{a chap}
@chapter chap, @code{a chap}

@node a node
@section section

@node truc
@section truc
@node sub1
@subsection sub1

Text.

@node sub2
@subsection sub2 @c comment

@node section
@section section

@node section 1
@section section

@node  1
@unnumbered

@node @asis{} 2
@section @asis{}

@bye';

$parser = Texinfo::Parser::parser();
$document = $parser->parse_texi_text($sections_text);
$tree = $document->tree();
$registrar = $parser->registered_errors();
Texinfo::Structuring::associate_internal_references($registrar, $parser,
                                                    $document);
my $added_nodes
 = Texinfo::Transformations::insert_nodes_for_sectioning_commands($document,
                                                          $registrar, $parser);
my $result = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
is ($reference, $result, 'add nodes');
#print STDERR "$result";

$parser = Texinfo::Parser::parser();
$document = $parser->parse_texi_text('@node Top
@top top

@chapter chap

@cindex index entry

@menu
* (some_manual)::
@end menu
');
  $tree = $document->tree();
$registrar = $parser->registered_errors();
my $identifier_target = $document->labels_information();
Texinfo::Structuring::associate_internal_references($registrar, $parser,
                                                    $document);
$added_nodes
   = Texinfo::Transformations::insert_nodes_for_sectioning_commands($document,
                                                          $registrar, $parser);
my $indices_information = $document->indices_information();
ok (($identifier_target->{'chap'}->{'extra'}->{'menus'}
     and @{$identifier_target->{'chap'}->{'extra'}->{'menus'}}
     and scalar(@{$identifier_target->{'chap'}->{'extra'}->{'menus'}}) == 1
     and !exists($identifier_target->{'Top'}->{'extra'}->{'menus'})),
    'new node has a menu');
is (Texinfo::Convert::Texinfo::convert_to_texinfo(
  $identifier_target->{'chap'}->{'extra'}->{'menus'}->[0]),
'@menu
* (some_manual)::
@end menu
', 'reassociated menu is correct');
#print STDERR join('|',
#               keys(%{$indices_information->{'cp'}->{'index_entries'}}))."\n";
is ($identifier_target->{'chap'},
      $indices_information->{'cp'}->{'index_entries'}->[0]
                              ->{'entry_element'}->{'extra'}->{'element_node'},
  'index entry reassociated');
#print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($tree);

