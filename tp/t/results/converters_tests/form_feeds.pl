use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'form_feeds'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'firstnode'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => ' 
',
          'type' => 'empty_line'
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
              'text' => 'aa'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'bb
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
              'text' => 'cc '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'dd
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'end in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'begin in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'middle in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'firstnode'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'first-node'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first-node'
          }
        ],
        'normalized' => 'first-node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'form_feeds'}{'contents'}[0]{'parent'} = $result_trees{'form_feeds'};
$result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'parent'} = $result_trees{'form_feeds'};
$result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[13]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[15]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[17]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'extra'}{'label'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'parent'} = $result_trees{'form_feeds'};

$result_texis{'form_feeds'} = '@node Top

@node firstnode

 

aabb

cc  dd

@code{end in code}

@code{begin in code}

@code{middle in code}

@xref{firstnode}
';


$result_texts{'form_feeds'} = '

 

aabb

cc dd

end in code

begin in code

middle in code

firstnode
';

$result_nodes{'form_feeds'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-node'
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'form_feeds'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'form_feeds'};

$result_menus{'form_feeds'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'form_feeds'} = [];


$result_floats{'form_feeds'} = {};



$result_converted{'plaintext'}->{'form_feeds'} = 'aa

   bb

   cc

   dd

   ‘end in code’

   ‘begin in code’

   ‘middlein code’

   *Note firstnode::
';


$result_converted{'html_text'}->{'form_feeds'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="node">Top</h1>

<hr>
<a class="node-id" id="first-node"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h4 class="node">first&#12;node</h4>

&#12; &#12;

<p>aa</p>&#12;<p>bb
</p>
<p>cc </p>&#12;<p>dd
</p>
<p><code class="code">end in code&#12;</code>
</p>
<p><code class="code">&#12;begin in code</code>
</p>
<p><code class="code">middle&#12; in code</code>
</p>
<p>See <a class="xref" href="#first-node">first&#12;node</a>
</p>';


$result_converted{'xml'}->{'form_feeds'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">first&formfeed;node</nodenext></node>

<node name="first-node" spaces=" "><nodename>first&formfeed;node</nodename><nodeprev automatic="on">Top</nodeprev></node>

&formfeed; &formfeed;

<para>aa</para>&formfeed;<para>bb
</para>
<para>cc </para>&formfeed; <para>dd
</para>
<para><code>end in code&formfeed;</code>
</para>
<para><code>&formfeed;begin in code</code>
</para>
<para><code>middle&formfeed; in code</code>
</para>
<para><xref label="first-node"><xrefnodename>first&formfeed;node</xrefnodename></xref>
</para>';


$result_converted{'docbook'}->{'form_feeds'} = '<anchor id="first-node"/>

   

<para>aa</para> <para>bb
</para>
<para>cc </para> <para>dd
</para>
<para><literal>end in code </literal>
</para>
<para><literal> begin in code</literal>
</para>
<para><literal>middle  in code</literal>
</para>
<para>See <link linkend="first-node">first node</link>
</para>';


$result_converted{'latex'}->{'form_feeds'} = '\\label{anchor:Top}%
\\label{anchor:first-node}%

\\par{}

aa\\par{}
bb

cc \\par{}
 dd

\\texttt{end in code}

\\texttt{begin in code}

\\texttt{middle in code}

See \\hyperref[anchor:first-node]{[firstnode], page~\\pageref*{anchor:first-node}}
';

1;
