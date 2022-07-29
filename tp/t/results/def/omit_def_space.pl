use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'omit_def_space'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'txidefnamenospace',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' txidefnamenospace
',
            'misc_args' => [
              'txidefnamenospace',
              ''
            ]
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
          'cmdname' => 'defun',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'function'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'arg1'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'arg2'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defun',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defun',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defun',
                  'number' => 1
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'explain
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defun'
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
                'command_argument' => 'defun',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'omit_def_name_space' => 1,
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
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'omit_def_space'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'omit_def_space'}{'contents'}[0];
$result_trees{'omit_def_space'}{'contents'}[0]{'parent'} = $result_trees{'omit_def_space'};

$result_texis{'omit_def_space'} = '@set txidefnamenospace

@defun function (arg1, arg2)
explain
@end defun
';


$result_texts{'omit_def_space'} = '
Function: function (arg1, arg2)
explain
';

$result_errors{'omit_def_space'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'omit_def_space'} = {};


$result_indices_sort_strings{'omit_def_space'} = {
  'fn' => [
    'function'
  ]
};



$result_converted{'plaintext'}->{'omit_def_space'} = ' -- Function: function (arg1, arg2)
     explain
';


$result_converted{'html'}->{'omit_def_space'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-function"><span class="category-def">Function: </span><span><strong class="strong">function</strong> <em class="emph">(arg1, arg2)</em><a class="copiable-link" href=\'#index-function\'> &para;</a></span></dt>
<dd><p>explain
</p></dd></dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'omit_def_space'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'latex'}->{'omit_def_space'} = '
\\noindent\\texttt{function\\EmbracOn{}\\textsl{(arg1, arg2)}\\EmbracOff{}}\\hfill[Function]



\\index[fn]{function@\\texttt{function}}%
explain
';

1;
