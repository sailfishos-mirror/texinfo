# Automatically generated from ./maintain/generate_convert_data_perl_code.pl

package Texinfo::Data;

use Texinfo::Common;

my %base_default_css_element_class_styles = (
    'ul.toc-numbered-mark'    => 'list-style: none',
    'pre.menu-comment-preformatted'    => 'font-family: serif',
 # using display: inline is an attempt to avoid a line break when in
 # preformatted in menu.  In 2022 it does not seems to work in firefox,
 # there is still a line break.
    'pre.menu-entry-description-preformatted'    => 'font-family: serif; display: inline',
    'pre.menu-preformatted'    => 'font-family: serif',
    'a.summary-letter-printindex'    => 'text-decoration: none',
    'pre.display-preformatted'    => 'font-family: inherit',
 # 'display: flex; justify-content: center' centers the pre as a whole
    'pre.displaymath'    => 'font-style: italic; font-family: serif; display: flex; justify-content: center',
    'table.cartouche'    => 'border-style: solid; border-radius: 0.5em',
 # used with PROGRAM_NAME_IN_FOOTER
    'span.program-in-footer'    => 'font-size: smaller',
    'span.sansserif'    => 'font-family: sans-serif; font-weight: normal',
    'span.r'    => 'font-family: initial; font-weight: normal; font-style: normal',
    'td.index-entry-level-1'    => 'padding-left: 1.5em',
    'td.index-entry-level-2'    => 'padding-left: 3.0em',
    'kbd.key'    => 'font-style: normal',
    'kbd.kbd'    => 'font-style: oblique',
    'strong.def-name'    => 'font-family: monospace; font-weight: bold; font-size: larger',
    'p.flushleft-paragraph'    => 'text-align:left',
    'p.flushright-paragraph'    => 'text-align:right',
    'h1.centerchap'    => 'text-align:center',
    'h2.centerchap'    => 'text-align:center',
    'h3.centerchap'    => 'text-align:center',
    'h1.settitle'    => 'text-align:center',
    'h1.shorttitlepage'    => 'text-align:center',
    'h3.subtitle'    => 'text-align:right',
    'h4.centerchap'    => 'text-align:center',
    'div.center'    => 'text-align:center',
    'blockquote.indentedblock'    => 'margin-right: 0em',
    'td.printindex-index-entry'    => 'vertical-align: top',
    'td.printindex-index-section'    => 'vertical-align: top; padding-left: 1em',
    'td.printindex-index-see-also'    => 'vertical-align: top; padding-left: 1em',
    'td.menu-entry-destination'    => 'vertical-align: top',
    'td.menu-entry-description'    => 'vertical-align: top; padding-left: 1em',
    'th.entries-header-printindex'    => 'text-align:left',
    'th.sections-header-printindex'    => 'text-align:left; padding-left: 1em',
    'th.menu-comment'    => 'text-align:left',
    'td.category-def'    => 'text-align:right',
    'td.call-def'    => 'text-align:left',
    'table.direction-about'    => 'border-collapse: collapse',
    'th.button-direction-about'    => 'border-width: thin; border-bottom-style: solid; border-right-style: solid',
    'th.name-direction-about'    => 'border-width: thin; border-bottom-style: solid; border-right-style: solid; border-left-style: solid',
    'th.description-direction-about'    => 'border-width: thin; border-bottom-style: solid; border-right-style: solid; border-left-style: solid',
    'th.example-direction-about'    => 'border-width: thin; border-bottom-style: solid; border-left-style: solid',
    'td.button-direction-about'    => 'text-align: center; border-width: thin; border-right-style: solid',
    'td.name-direction-about'    => 'text-align: center; border-width: thin; border-right-style: solid; border-left-style: solid',
    'td.description-direction-about'    => 'border-width: thin; border-right-style: solid; border-left-style: solid',
    'td.example-direction-about'    => 'border-width: thin; border-left-style: solid',
    'img.nav-icon'    => 'vertical-align: middle',
    'table.def-block'    => 'width: 100%',
 # The anchor element is wrapped in a <span> rather than a block level
 # element to avoid it appearing unless the mouse pointer is directly over
 # the text, as it is annoying for anchors to flicker when you are moving
 # your pointer elsewhere. "line-height: 0em" stops the invisible text from
 # changing vertical spacing.
    'a.copiable-link'    => 'visibility: hidden; text-decoration: none; line-height: 0em',
    'span:hover a.copiable-link'    => 'visibility: visible',
);

sub get_base_default_css_info() {
  return \%base_default_css_element_class_styles;
}

my %default_converted_directions_strings = (

  'rel' => {
    ' ' => '',
    'Top' => 'start',
    'Contents' => 'contents',
    'Overview' => '',
    'Index' => 'index',
    'This' => '',
    'Back' => 'prev',
    'FastBack' => '',
    'Prev' => 'prev',
    'Up' => 'up',
    'Next' => 'next',
    'NodeUp' => 'up',
    'NodeNext' => 'next',
    'NodePrev' => 'prev',
    'NodeForward' => '',
    'NodeBack' => '',
    'Forward' => 'next',
    'FastForward' => '',
    'About' => 'help',
    'First' => '',
    'Last' => '',
    'NextFile' => 'next',
    'PrevFile' => 'prev',
  },

  'accesskey' => {
    ' ' => '',
    'Top' => '',
    'Contents' => '',
    'Overview' => '',
    'Index' => '',
    'This' => '',
    'Back' => 'p',
    'FastBack' => '',
    'Prev' => 'p',
    'Up' => 'u',
    'Next' => 'n',
    'NodeUp' => 'u',
    'NodeNext' => 'n',
    'NodePrev' => 'p',
    'NodeForward' => '',
    'NodeBack' => '',
    'Forward' => 'n',
    'FastForward' => '',
    'About' => '',
    'First' => '',
    'Last' => '',
    'NextFile' => '',
    'PrevFile' => '',
  },

  'example' => {
    ' ' => '',
    'Top' => ' &nbsp; ',
    'Contents' => ' &nbsp; ',
    'Overview' => ' &nbsp; ',
    'Index' => ' &nbsp; ',
    'This' => '1.2.3',
    'Back' => '1.2.2',
    'FastBack' => '1',
    'Prev' => '1.2.2',
    'Up' => '1.2',
    'Next' => '1.2.4',
    'NodeUp' => '1.2',
    'NodeNext' => '1.2.4',
    'NodePrev' => '1.2.2',
    'NodeForward' => '1.2.4',
    'NodeBack' => '1.2.2',
    'Forward' => '1.2.4',
    'FastForward' => '2',
    'About' => ' &nbsp; ',
    'First' => '1.',
    'Last' => '1.2.4',
    'NextFile' => ' &nbsp; ',
    'PrevFile' => ' &nbsp; ',
  },
);

sub get_default_converted_directions_strings() {
  return \%default_converted_directions_strings;
}

my %default_translated_directions_strings = (

  'text' => {
    ' ' => {'converted' => ' &nbsp; '},
    'Top' => {'to_convert' => Texinfo::Common::pgdt('Top direction string', 'Top')},
    'Contents' => {'to_convert' => Texinfo::Common::pgdt('Contents direction string', 'Contents')},
    'Overview' => {'to_convert' => Texinfo::Common::pgdt('Overview direction string', 'Overview')},
    'Index' => {'to_convert' => Texinfo::Common::pgdt('Index direction string', 'Index')},
    'This' => {'to_convert' => Texinfo::Common::pgdt('This (current section) direction string', 'current')},
    'Back' => {'converted' => ' &lt; '},
    'FastBack' => {'converted' => ' &lt;&lt; '},
    'Prev' => {'to_convert' => Texinfo::Common::pgdt('Prev direction string', 'Prev')},
    'Up' => {'to_convert' => Texinfo::Common::pgdt('Up direction string', ' Up ')},
    'Next' => {'to_convert' => Texinfo::Common::pgdt('Next direction string', 'Next')},
    'NodeUp' => {'to_convert' => Texinfo::Common::pgdt('NodeUp direction string', 'Up')},
    'NodeNext' => {'to_convert' => Texinfo::Common::pgdt('NodeNext direction string', 'Next')},
    'NodePrev' => {'to_convert' => Texinfo::Common::pgdt('NodePrev direction string', 'Previous')},
    'NodeForward' => {'to_convert' => Texinfo::Common::pgdt('NodeForward direction string', 'Forward node')},
    'NodeBack' => {'to_convert' => Texinfo::Common::pgdt('NodeBack direction string', 'Back node')},
    'Forward' => {'converted' => ' &gt; '},
    'FastForward' => {'converted' => ' &gt;&gt; '},
    'About' => {'converted' => ' ? '},
    'First' => {'converted' => ' |&lt; '},
    'Last' => {'converted' => ' &gt;| '},
    'NextFile' => {'to_convert' => Texinfo::Common::pgdt('NextFile direction string', 'Next file')},
    'PrevFile' => {'to_convert' => Texinfo::Common::pgdt('PrevFile direction string', 'Previous file')},
  },

  'description' => {
    'Top' => {'to_convert' => Texinfo::Common::pgdt('Top direction description', 'Cover (top) of document')},
    'Contents' => {'to_convert' => Texinfo::Common::pgdt('Contents direction description', 'Table of contents')},
    'Overview' => {'to_convert' => Texinfo::Common::pgdt('Overview direction description', 'Short table of contents')},
    'Index' => {'to_convert' => Texinfo::Common::pgdt('Index direction description', 'Index')},
    'This' => {'to_convert' => Texinfo::Common::pgdt('This (current section) direction description', 'Current section')},
    'Back' => {'to_convert' => Texinfo::Common::pgdt('Back direction description', 'Previous section in reading order')},
    'FastBack' => {'to_convert' => Texinfo::Common::pgdt('FastBack direction description', 'Beginning of this chapter or previous chapter')},
    'Prev' => {'to_convert' => Texinfo::Common::pgdt('Prev direction description', 'Previous section on same level')},
    'Up' => {'to_convert' => Texinfo::Common::pgdt('Up direction description', 'Up section')},
    'Next' => {'to_convert' => Texinfo::Common::pgdt('Next direction description', 'Next section on same level')},
    'NodeUp' => {'to_convert' => Texinfo::Common::pgdt('NodeUp direction description', 'Up node')},
    'NodeNext' => {'to_convert' => Texinfo::Common::pgdt('NodeNext direction description', 'Next node')},
    'NodePrev' => {'to_convert' => Texinfo::Common::pgdt('NodePrev direction description', 'Previous node')},
    'NodeForward' => {'to_convert' => Texinfo::Common::pgdt('NodeForward direction description', 'Next node in node reading order')},
    'NodeBack' => {'to_convert' => Texinfo::Common::pgdt('NodeBack direction description', 'Previous node in node reading order')},
    'Forward' => {'to_convert' => Texinfo::Common::pgdt('Forward direction description', 'Next section in reading order')},
    'FastForward' => {'to_convert' => Texinfo::Common::pgdt('FastForward direction description', 'Next chapter')},
    'About' => {'to_convert' => Texinfo::Common::pgdt('About direction description', 'About (help)')},
    'First' => {'to_convert' => Texinfo::Common::pgdt('First direction description', 'First section in reading order')},
    'Last' => {'to_convert' => Texinfo::Common::pgdt('Last direction description', 'Last section in reading order')},
    'NextFile' => {'to_convert' => Texinfo::Common::pgdt('NextFile direction description', 'Forward section in next file')},
    'PrevFile' => {'to_convert' => Texinfo::Common::pgdt('PrevFile direction description', 'Back section in previous file')},
  },

  'button' => {
    ' ' => {'converted' => ' '},
    'Top' => {'to_convert' => Texinfo::Common::pgdt('Top direction button label', 'Top')},
    'Contents' => {'to_convert' => Texinfo::Common::pgdt('Contents direction button label', 'Contents')},
    'Overview' => {'to_convert' => Texinfo::Common::pgdt('Overview direction button label', 'Overview')},
    'Index' => {'to_convert' => Texinfo::Common::pgdt('Index direction button label', 'Index')},
    'This' => {'to_convert' => Texinfo::Common::pgdt('This direction button label', 'This')},
    'Back' => {'to_convert' => Texinfo::Common::pgdt('Back direction button label', 'Back')},
    'FastBack' => {'to_convert' => Texinfo::Common::pgdt('FastBack direction button label', 'FastBack')},
    'Prev' => {'to_convert' => Texinfo::Common::pgdt('Prev direction button label', 'Prev')},
    'Up' => {'to_convert' => Texinfo::Common::pgdt('Up direction button label', 'Up')},
    'Next' => {'to_convert' => Texinfo::Common::pgdt('Next direction button label', 'Next')},
    'NodeUp' => {'to_convert' => Texinfo::Common::pgdt('NodeUp direction button label', 'NodeUp')},
    'NodeNext' => {'to_convert' => Texinfo::Common::pgdt('NodeNext direction button label', 'NodeNext')},
    'NodePrev' => {'to_convert' => Texinfo::Common::pgdt('NodePrev direction button label', 'NodePrev')},
    'NodeForward' => {'to_convert' => Texinfo::Common::pgdt('NodeForward direction button label', 'NodeForward')},
    'NodeBack' => {'to_convert' => Texinfo::Common::pgdt('NodeBack direction button label', 'NodeBack')},
    'Forward' => {'to_convert' => Texinfo::Common::pgdt('Forward direction button label', 'Forward')},
    'FastForward' => {'to_convert' => Texinfo::Common::pgdt('FastForward direction button label', 'FastForward')},
    'About' => {'to_convert' => Texinfo::Common::pgdt('About direction button label', 'About')},
    'First' => {'to_convert' => Texinfo::Common::pgdt('First direction button label', 'First')},
    'Last' => {'to_convert' => Texinfo::Common::pgdt('Last direction button label', 'Last')},
    'NextFile' => {'to_convert' => Texinfo::Common::pgdt('NextFile direction button label', 'NextFile')},
    'PrevFile' => {'to_convert' => Texinfo::Common::pgdt('PrevFile direction button label', 'PrevFile')},
  },
);

sub get_default_translated_directions_strings() {
  return \%default_translated_directions_strings;
}

my %default_special_unit_info = (

  'class' => {
    'contents' => 'contents',
    'shortcontents' => 'shortcontents',
    'footnotes' => 'footnotes',
    'about' => 'about',
  },

  'direction' => {
    'contents' => 'Contents',
    'shortcontents' => 'Overview',
    'footnotes' => 'Footnotes',
    'about' => 'About',
  },

  'order' => {
    'contents' => '30',
    'shortcontents' => '20',
    'footnotes' => '10',
    'about' => '40',
  },

  'file_string' => {
    'contents' => '_toc',
    'shortcontents' => '_ovr',
    'footnotes' => '_fot',
    'about' => '_abt',
  },

  'target' => {
    'contents' => 'SEC_Contents',
    'shortcontents' => 'SEC_Shortcontents',
    'footnotes' => 'SEC_Footnotes',
    'about' => 'SEC_About',
  },
);

sub get_default_special_unit_info() {
  return \%default_special_unit_info;
}

my %default_translated_special_unit_info = (

  'heading' => {
    'contents' => Texinfo::Common::pgdt('contents section heading', 'Table of Contents'),
    'shortcontents' => Texinfo::Common::pgdt('shortcontents section heading', 'Short Table of Contents'),
    'footnotes' => Texinfo::Common::pgdt('footnotes section heading', 'Footnotes'),
    'about' => Texinfo::Common::pgdt('about section heading', 'About This Document'),
  },
);

sub get_default_translated_special_unit_info() {
  return \%default_translated_special_unit_info;
}

my %html_style_commands_element = (
    'b'    => 'b',
    'cite'    => 'cite',
    'code'    => 'code',
    'command'    => 'code',
    'dfn'    => 'em',
    'dmn'    => 'span',
    'emph'    => 'em',
    'env'    => 'code',
    'file'    => 'samp',
 # no effect: the @multitable prototypes are ignored and headitem are in
 # <th> rather than <td>. The mapping is based on style used in other
 # formats.
    'headitemfont'    => 'b',
    'i'    => 'i',
    'slanted'    => 'i',
    'sansserif'    => 'span',
    'kbd'    => 'kbd',
    'key'    => 'kbd',
    'option'    => 'samp',
    'r'    => 'span',
    'samp'    => 'samp',
    'sc'    => 'small',
    'strong'    => 'strong',
    'sub'    => 'sub',
    'sup'    => 'sup',
    't'    => 'code',
    'var'    => 'var',
 # other brace command
    'verb'    => 'code',
);

sub get_html_style_commands_element() {
  return \%html_style_commands_element;
}

1;
