use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'uref_accented_letter_ascii'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'US-ASCII'
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
          'cmdname' => 'documentencoding',
          'extra' => {
            'input_encoding_name' => 'us-ascii',
            'input_perl_encoding' => 'ascii',
            'spaces_before_argument' => ' ',
            'text_arg' => 'US-ASCII'
          },
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'http://example.com/acc_'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '"',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ogonek',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'uref',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'uref_accented_letter_ascii'}{'contents'}[0];
$result_trees{'uref_accented_letter_ascii'}{'contents'}[0]{'parent'} = $result_trees{'uref_accented_letter_ascii'};

$result_texis{'uref_accented_letter_ascii'} = '@documentencoding US-ASCII

@uref{http://example.com/acc_@"a@ogonek{a}}
';


$result_texts{'uref_accented_letter_ascii'} = '
http://example.com/acc_a"a;
';

$result_errors{'uref_accented_letter_ascii'} = [];


$result_floats{'uref_accented_letter_ascii'} = {};



$result_converted{'html'}->{'uref_accented_letter_ascii'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">



</head>

<body lang="en">

<p><a class="uref" href="http://example.com/acc_%c3%a4%c4%85">http://example.com/acc_&auml;&#261;</a>
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'uref_accented_letter_ascii'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'uref_accented_letter_ascii.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
