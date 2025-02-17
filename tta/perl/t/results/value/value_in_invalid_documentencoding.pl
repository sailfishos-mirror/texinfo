use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_in_invalid_documentencoding'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'badvalue',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'bad',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' badvalue bad
'
          }
        },
        {
          'cmdname' => 'documentencoding',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'position' => 3,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'bad'
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
          'extra' => {
            'text_arg' => 'bad'
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'badvalue'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'bad',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 2
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'value_in_invalid_documentencoding'} = '@set badvalue bad
@documentencoding bad
';


$result_texts{'value_in_invalid_documentencoding'} = '';

$result_errors{'value_in_invalid_documentencoding'} = [
  {
    'error_line' => 'warning: encoding `bad\' is not a canonical texinfo encoding
',
    'line_nr' => 2,
    'text' => 'encoding `bad\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `bad\'
',
    'line_nr' => 2,
    'text' => 'unhandled encoding name `bad\'',
    'type' => 'warning'
  }
];


$result_floats{'value_in_invalid_documentencoding'} = {};


1;
