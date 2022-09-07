use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'insertcopying'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'copying',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'License.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_after_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'quotation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'You are not allowed.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'quotation'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'License:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[2];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0]{'contents'}[4];
$result_trees{'insertcopying'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'insertcopying'}{'contents'}[0];
$result_trees{'insertcopying'}{'contents'}[0]{'parent'} = $result_trees{'insertcopying'};

$result_texis{'insertcopying'} = '@copying
License.

@quotation 
You are not allowed.
@end quotation
@end copying

License:

@insertcopying
';


$result_texts{'insertcopying'} = '
License:

';

$result_errors{'insertcopying'} = [];


$result_floats{'insertcopying'} = {};



$result_converted{'plaintext'}->{'insertcopying'} = 'License:

   License.

     You are not allowed.
';


$result_converted{'html_text'}->{'insertcopying'} = '
<p>License:
</p>
<p>License.
</p>
<blockquote class="quotation">
<p>You are not allowed.
</p></blockquote>
';


$result_converted{'xml'}->{'insertcopying'} = '<copying endspaces=" ">
<para>License.
</para>
<quotation endspaces=" "> 
<para>You are not allowed.
</para></quotation>
</copying>

<para>License:
</para>
<insertcopying></insertcopying>
';


$result_converted{'latex_text'}->{'insertcopying'} = '
License:

License.

\\begin{quote}
You are not allowed.
\\end{quote}
';


$result_converted{'docbook_doc'}->{'insertcopying'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="en">
<bookinfo><legalnotice><para>License.
</para>
<blockquote><para>You are not allowed.
</para></blockquote></legalnotice></bookinfo>

<para>License:
</para>
<para>License.
</para>
<blockquote><para>You are not allowed.
</para></blockquote></book>
';

1;
