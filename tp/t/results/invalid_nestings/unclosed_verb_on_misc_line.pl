use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'unclosed_verb_on_misc_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'setfilename',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'name '
                },
                {
                  'cmdname' => 'verb',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'ile.texi',
                          'type' => 'raw'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'info' => {
                    'delimiter' => 'f'
                  },
                  'source_info' => {
                    'line_nr' => 1
                  }
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'text_arg' => 'name '
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'unclosed_verb_on_misc_line'} = '@setfilename name @verb{file.texif}';


$result_texts{'unclosed_verb_on_misc_line'} = '';

$result_errors{'unclosed_verb_on_misc_line'} = [
  {
    'error_line' => 'warning: @verb should not appear in @setfilename
',
    'line_nr' => 1,
    'text' => '@verb should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => '@verb missing closing delimiter sequence: f}
',
    'line_nr' => 1,
    'text' => '@verb missing closing delimiter sequence: f}',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @setfilename: name @verb{file.texif}
',
    'line_nr' => 1,
    'text' => 'bad argument to @setfilename: name @verb{file.texif}',
    'type' => 'error'
  }
];


$result_floats{'unclosed_verb_on_misc_line'} = {};


1;
