use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlineraw'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'A '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'plaintext'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'plaintext `` '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'lbracechar',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'contents' => [],
              'extra' => {
                'expand_index' => 1,
                'format' => 'plaintext'
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
              'text' => ' a.  Now html
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in <i>'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'HTML'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'acronym',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '</i>'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'contents' => [],
              'extra' => {
                'expand_index' => 1,
                'format' => 'html'
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
              'text' => '.
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
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineraw'}{'contents'}[0];
$result_trees{'inlineraw'}{'contents'}[0]{'parent'} = $result_trees{'inlineraw'};

$result_texis{'inlineraw'} = 'A @inlineraw{plaintext, plaintext `` @lbracechar{} } a.  Now html
@inlineraw{html, in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlineraw'} = 'A  a.  Now html
.
';

$result_errors{'inlineraw'} = [];


$result_floats{'inlineraw'} = {};



$result_converted{'plaintext'}->{'inlineraw'} = 'A plaintext `` { a.  Now html .
';

1;
