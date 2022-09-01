use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sp_in_example'} = {
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Para
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '1'
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
                  'cmdname' => 'sp',
                  'extra' => {
                    'misc_args' => [
                      '1'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'other para
'
                },
                {
                  'parent' => {},
                  'text' => 'Now lone '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'sp:
'
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
                          'text' => '1'
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
                  'cmdname' => 'sp',
                  'extra' => {
                    'misc_args' => [
                      '1'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '2'
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
                  'cmdname' => 'sp',
                  'extra' => {
                    'misc_args' => [
                      '2'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'Para after sp
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'parent' => {},
                  'text' => 'A
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '2'
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
                  'cmdname' => 'sp',
                  'extra' => {
                    'misc_args' => [
                      '2'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'B
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'parent' => {},
                  'text' => 'sp after para
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '1'
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
                  'cmdname' => 'sp',
                  'extra' => {
                    'misc_args' => [
                      '1'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
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
            'line_nr' => 1,
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
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[17];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'sp_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'}{'contents'}[0];
$result_trees{'sp_in_example'}{'contents'}[0]{'parent'} = $result_trees{'sp_in_example'};

$result_texis{'sp_in_example'} = '@example
Para
@sp 1
other para
Now lone @@sp:

@sp 1

@sp 2
Para after sp

A
@sp 2
B

sp after para
@sp 1
@end example
';


$result_texts{'sp_in_example'} = 'Para

other para
Now lone @sp:





Para after sp

A


B

sp after para

';

$result_errors{'sp_in_example'} = [];


$result_floats{'sp_in_example'} = {};



$result_converted{'plaintext'}->{'sp_in_example'} = '     Para

     other para
     Now lone @sp:





     Para after sp

     A


     B

     sp after para

';


$result_converted{'html_text'}->{'sp_in_example'} = '<div class="example">
<pre class="example-preformatted">Para

other para
Now lone @sp:





Para after sp

A


B

sp after para

</pre></div>
';


$result_converted{'xml'}->{'sp_in_example'} = '<example endspaces=" ">
<pre xml:space="preserve">Para
<sp value="1" line="1"></sp>
other para
Now lone &arobase;sp:

<sp value="1" line="1"></sp>

<sp value="2" line="2"></sp>
Para after sp

A
<sp value="2" line="2"></sp>
B

sp after para
<sp value="1" line="1"></sp>
</pre></example>
';


$result_converted{'docbook'}->{'sp_in_example'} = '<screen>Para
other para
Now lone @sp:


Para after sp

A
B

sp after para
</screen>';


$result_converted{'latex'}->{'sp_in_example'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily Para
\\vskip 1\\baselineskip %
other para
Now lone @sp:

\\vskip 1\\baselineskip %

\\vskip 2\\baselineskip %
Para after sp

A
\\vskip 2\\baselineskip %
B

sp after para
\\vskip 1\\baselineskip %
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
