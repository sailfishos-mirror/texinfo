use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_acronym'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'acronym',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'GNU'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'GNU'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
                    },
                    {
                      'text' => '\'s Not Unix'
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
                'line_nr' => 1
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

$result_texis{'recursive_acronym'} = '@acronym{GNU, @acronym{GNU}\'s Not Unix}
';


$result_texts{'recursive_acronym'} = 'GNU (GNU\'s Not Unix)
';

$result_errors{'recursive_acronym'} = [];


$result_floats{'recursive_acronym'} = {};



$result_converted{'plaintext'}->{'recursive_acronym'} = 'GNU (GNU\'s Not Unix)
';


$result_converted{'html_text'}->{'recursive_acronym'} = '<p><abbr class="acronym" title="GNU&rsquo;s Not Unix">GNU</abbr> (<abbr class="acronym">GNU</abbr>&rsquo;s Not Unix)
</p>';


$result_converted{'latex_text'}->{'recursive_acronym'} = 'GNU (GNU\'s Not Unix)
';


$result_converted{'docbook'}->{'recursive_acronym'} = '<para><acronym>GNU</acronym> (<acronym>GNU</acronym>&#8217;s Not Unix)
</para>';

1;
