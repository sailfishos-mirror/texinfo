use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'punctuation_in_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Text. Email '
            },
            {
              'cmdname' => 'email',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a. b'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'a. b'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' dmn '
            },
            {
              'cmdname' => 'dmn',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '1. 2'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' and text. indicateurl '
            },
            {
              'cmdname' => 'indicateurl',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i. u'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' and then kbd '
            },
            {
              'cmdname' => 'kbd',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'k. d'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' and math '
            },
            {
              'cmdname' => 'math',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'm. a'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' and cite '
            },
            {
              'cmdname' => 'cite',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'c. e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' and emph '
            },
            {
              'cmdname' => 'emph',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e. h'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => ' text. 
'
            },
            {
              'text' => 'asis in code '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a. c'
                            }
                          ],
                          'type' => 'brace_container'
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
              'text' => '
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

$result_texis{'punctuation_in_command'} = '
Text. Email @email{a. b,a. b} dmn @dmn{1. 2} and text. indicateurl @indicateurl{i. u} and then kbd @kbd{k. d} and math @math{m. a} and cite @cite{c. e} and emph @emph{e. h} text. 
asis in code @code{@asis{a. c}}
';


$result_texts{'punctuation_in_command'} = '
Text. Email a. b dmn 1. 2 and text. indicateurl i. u and then kbd k. d and math m. a and cite c. e and emph e. h text. 
asis in code a. c
';

$result_errors{'punctuation_in_command'} = [];


$result_floats{'punctuation_in_command'} = {};



$result_converted{'plaintext'}->{'punctuation_in_command'} = 'Text.  Email a.  b <a. b> dmn 1. 2 and text.  indicateurl ‘i. u’ and
then kbd ‘k. d’ and math m. a and cite ‘c. e’ and emph _e.  h_ text.
asis in code ‘a. c’
';

1;
