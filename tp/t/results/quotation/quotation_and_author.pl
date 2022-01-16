use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'quotation_and_author'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text before quotation
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => ' 
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Some One'
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
              'cmdname' => 'author',
              'extra' => {
                'quotation' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'A quot---ation
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'authors' => [
              {}
            ],
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
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
              'text' => 'Text between quotation and smallquotation
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
          'cmdname' => 'smallquotation',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'An Author Name'
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
              'cmdname' => 'author',
              'extra' => {
                'quotation' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in small---quotation.
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
                      'text' => 'smallquotation'
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
                'command_argument' => 'smallquotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'smallquotation'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'authors' => [
              {}
            ],
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Note'
                }
              ],
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Some Notifier'
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
              'cmdname' => 'author',
              'extra' => {
                'quotation' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'A Note
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'authors' => [
              {}
            ],
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[5];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'extra'}{'command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'};

$result_texis{'quotation_and_author'} = 'Text before quotation

@quotation 
@author Some One
A quot---ation
@end quotation

Text between quotation and smallquotation

@smallquotation
@author An Author Name
in small---quotation.
@end smallquotation

@quotation Note
@author Some Notifier
A Note
@end quotation
';


$result_texts{'quotation_and_author'} = 'Text before quotation

Some One
A quot--ation

Text between quotation and smallquotation

An Author Name
in small--quotation.

Note
Some Notifier
A Note
';

$result_errors{'quotation_and_author'} = [];


$result_floats{'quotation_and_author'} = {};



$result_converted{'plaintext'}->{'quotation_and_author'} = 'Text before quotation

     A quot—ation
                             — _Some One_

   Text between quotation and smallquotation

     in small—quotation.
                          — _An Author Name_

     Note: A Note
                           — _Some Notifier_
';


$result_converted{'html_text'}->{'quotation_and_author'} = '<p>Text before quotation
</p>
<blockquote class="quotation">
<p>A quot&mdash;ation
</p></blockquote>
<div class="center">&mdash; <em class="emph">Some One</em>
</div>
<p>Text between quotation and smallquotation
</p>
<blockquote class="quotation smallquotation">
<p>in small&mdash;quotation.
</p></blockquote>
<div class="center">&mdash; <em class="emph">An Author Name</em>
</div>
<blockquote class="quotation">
<p><b class="b">Note:</b> A Note
</p></blockquote>
<div class="center">&mdash; <em class="emph">Some Notifier</em>
</div>';


$result_converted{'xml'}->{'quotation_and_author'} = '<para>Text before quotation
</para>
<quotation endspaces=" "> 
<author spaces=" ">Some One</author>
<para>A quot&textmdash;ation
</para></quotation>

<para>Text between quotation and smallquotation
</para>
<smallquotation endspaces=" ">
<author spaces=" ">An Author Name</author>
<para>in small&textmdash;quotation.
</para></smallquotation>

<quotation spaces=" " endspaces=" "><quotationtype>Note</quotationtype>
<author spaces=" ">Some Notifier</author>
<para>A Note
</para></quotation>
';


$result_converted{'docbook'}->{'quotation_and_author'} = '<para>Text before quotation
</para>
<blockquote><attribution>Some One</attribution>
<para>A quot&#8212;ation
</para></blockquote>
<para>Text between quotation and smallquotation
</para>
<blockquote><attribution>An Author Name</attribution>
<para>in small&#8212;quotation.
</para></blockquote>
<note><attribution>Some Notifier</attribution>
<para>A Note
</para></note>';

1;
