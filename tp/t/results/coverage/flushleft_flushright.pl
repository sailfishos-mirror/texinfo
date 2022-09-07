use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'flushleft_flushright'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'flushleft',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
'
                },
                {
                  'parent' => {},
                  'text' => 'ldskf dsflj
'
                },
                {
                  'parent' => {},
                  'text' => '     lklsdlv l    lll. Bbb.
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'lhds
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
                      'text' => 'flushleft'
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
                'text_arg' => 'flushleft'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
          'cmdname' => 'flushright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
'
                },
                {
                  'parent' => {},
                  'text' => 'ldskf dsflj
'
                },
                {
                  'parent' => {},
                  'text' => '     lklsdlv l    lll. Bbb.
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'lhds
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
                      'text' => 'flushright'
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
                'text_arg' => 'flushright'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'flushleft_flushright'}{'contents'}[0];
$result_trees{'flushleft_flushright'}{'contents'}[0]{'parent'} = $result_trees{'flushleft_flushright'};

$result_texis{'flushleft_flushright'} = '
@flushleft
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds
@end flushleft

@flushright
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds
@end flushright
';


$result_texts{'flushleft_flushright'} = '
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds

aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds
';

$result_errors{'flushleft_flushright'} = [];


$result_floats{'flushleft_flushright'} = {};



$result_converted{'plaintext'}->{'flushleft_flushright'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
lklsdlv l lll.  Bbb.

lhds

aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
                                                            ldskf dsflj
                                                   lklsdlv l lll.  Bbb.

                                                                   lhds
';


$result_converted{'html_text'}->{'flushleft_flushright'} = '
<div class="flushleft"><p class="flushleft-paragraph">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</p>
<p class="flushleft-paragraph">lhds
</p></div>
<div class="flushright"><p class="flushright-paragraph">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</p>
<p class="flushright-paragraph">lhds
</p></div>';


$result_converted{'xml'}->{'flushleft_flushright'} = '
<flushleft endspaces=" ">
<para>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</para>
<para>lhds
</para></flushleft>

<flushright endspaces=" ">
<para>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</para>
<para>lhds
</para></flushright>
';


$result_converted{'latex_text'}->{'flushleft_flushright'} = '
\\begin{flushleft}
\\begin{GNUTexinfopreformatted}%
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds
\\end{GNUTexinfopreformatted}
\\end{flushleft}

\\begin{flushright}
\\begin{GNUTexinfopreformatted}%
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.

lhds
\\end{GNUTexinfopreformatted}
\\end{flushright}
';


$result_converted{'docbook'}->{'flushleft_flushright'} = '
<para>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</para>
<para>lhds
</para>
<para>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ccccccccccccccc
ldskf dsflj
     lklsdlv l    lll. Bbb.
</para>
<para>lhds
</para>';

1;
