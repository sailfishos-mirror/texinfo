use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inforef_too_much_args'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chapter'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'inforef',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'cross ref name'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'file name, spurious arg'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inforef_too_much_args'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'inforef_too_much_args'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'inforef_too_much_args'} = '@node chapter

@inforef{chapter, cross ref name, file name, spurious arg}
';


$result_texts{'inforef_too_much_args'} = '
chapter
';

$result_nodes{'inforef_too_much_args'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'chapter'
    }
  }
];

$result_menus{'inforef_too_much_args'} = [
  {
    'extra' => {
      'normalized' => 'chapter'
    }
  }
];

$result_errors{'inforef_too_much_args'} = [
  {
    'error_line' => 'warning: @inforef is obsolete
',
    'line_nr' => 3,
    'text' => '@inforef is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'inforef_too_much_args'} = {};



$result_converted{'plaintext'}->{'inforef_too_much_args'} = 'See cross ref name: (file name, spurious arg)chapter
';


$result_converted{'html_text'}->{'inforef_too_much_args'} = '<h4 class="node" id="chapter"><span>chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h4>

<p>See <a data-manual="file name, spurious arg" href="file%20name%2c%20spurious%20arg.html#chapter">cross ref name</a>
</p>';


$result_converted{'latex_text'}->{'inforef_too_much_args'} = '\\label{anchor:chapter}%

Section ``chapter\'\' in \\texttt{file name,\\ spurious arg}
';


$result_converted{'docbook'}->{'inforef_too_much_args'} = '<anchor id="chapter"/>

<para>See section &#8220;cross ref name&#8221; in <filename>file name, spurious arg</filename>
</para>';

1;
