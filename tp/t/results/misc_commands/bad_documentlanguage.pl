use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_documentlanguage'} = {
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'documentlanguage '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'en'
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
              'cmdname' => 'documentlanguage',
              'extra' => {
                'spaces_before_argument' => '  ',
                'text_arg' => 'en'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'en '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'en'
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
                  'cmdname' => 'documentlanguage',
                  'extra' => {
                    'spaces_before_argument' => '  ',
                    'text_arg' => 'en'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => '  ',
            'text_arg' => 'en '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
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
                  'text' => 'en  after documentlanguage'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => '  ',
            'text_arg' => 'en  after documentlanguage'
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'bad_documentlanguage'}{'contents'}[0];
$result_trees{'bad_documentlanguage'}{'contents'}[0]{'parent'} = $result_trees{'bad_documentlanguage'};

$result_texis{'bad_documentlanguage'} = '
documentlanguage @documentlanguage  en 

@documentlanguage  en @documentlanguage  en  

@documentlanguage  en  after documentlanguage
';


$result_texts{'bad_documentlanguage'} = '
documentlanguage 

';

$result_errors{'bad_documentlanguage'} = [
  {
    'error_line' => 'warning: @documentlanguage should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@documentlanguage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @documentlanguage should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@documentlanguage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @documentlanguage should not appear in @documentlanguage
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@documentlanguage should not appear in @documentlanguage',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @documentlanguage: en @documentlanguage  en
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'bad argument to @documentlanguage: en @documentlanguage  en',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: en  after documentlanguage is not a valid language code
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'en  after documentlanguage is not a valid language code',
    'type' => 'warning'
  }
];


$result_floats{'bad_documentlanguage'} = {};


1;
