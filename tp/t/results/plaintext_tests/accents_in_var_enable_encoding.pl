use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accents_in_var_enable_encoding'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'documentencoding',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'utf-8'
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
            'input_encoding_name' => 'utf-8',
            'text_arg' => 'utf-8'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'var',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'AA'
                    },
                    {
                      'cmdname' => ',',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'c'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 3
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'u',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'r'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 3
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '`',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'e'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 3
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'accents_in_var_enable_encoding'} = '@documentencoding utf-8

@var{AA@,c @u{r} @`e}.
';


$result_texts{'accents_in_var_enable_encoding'} = '
AAc, r( e`.
';

$result_errors{'accents_in_var_enable_encoding'} = [];


$result_floats{'accents_in_var_enable_encoding'} = {};



$result_converted{'plaintext'}->{'accents_in_var_enable_encoding'} = 'AAÇ R̆ È.
';

1;
