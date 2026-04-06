use strict;

use Test::More;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 3);

BEGIN { plan tests => 5; }

use Texinfo::Parser;
use Texinfo::Transformations;
use Texinfo::Convert::Texinfo;
use Texinfo::Document;
use Texinfo::Structuring;
use Texinfo::XSLoader;

#use Data::Dumper;

ok(1, 'modules loading');


# Following tests test the XS code

# NOTE sync with t/transformations.t insert_nodes_for_sectioning_commands
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

my $parser = Texinfo::Parser::parser();
my $document = $parser->parse_texi_text($sections_text);

Texinfo::Structuring::associate_internal_references($document);
Texinfo::Transformations::insert_nodes_for_sectioning_commands($document);

my $tree = $document->tree();
my $result = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
is($result, $reference, 'add nodes');
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
Texinfo::Structuring::associate_internal_references($document);
Texinfo::Transformations::insert_nodes_for_sectioning_commands($document);

my $identifier_target = $document->labels_information();
my $indices_information = $document->indices_information();
my $nodes_list = $document->nodes_list();
my $chap_node = $identifier_target->{'chap'};
my $top_node = $identifier_target->{'Top'};
my $chap_structure = $nodes_list->[$chap_node->{'extra'}->{'node_number'} -1];
my $top_structure = $nodes_list->[$top_node->{'extra'}->{'node_number'} -1];
ok(($chap_structure->{'menus'}
    and scalar(@{$chap_structure->{'menus'}}) == 1
    and !exists($top_structure->{'menus'})),
   'new node has a menu');
is(Texinfo::Convert::Texinfo::convert_to_texinfo(
            $chap_structure->{'menus'}->[0]),
'@menu
* (some_manual)::
@end menu
', 'reassociated menu is correct');
#print STDERR join('|',
#               keys(%{$indices_information->{'cp'}->{'index_entries'}}))."\n";
is('chap',
   $indices_information->{'cp'}->{'index_entries'}->[0]
                              ->{'entry_element'}->{'extra'}->{'element_node'},
  'index entry reassociated');
#$tree = $document->tree();
#print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($tree);

