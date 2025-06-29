#! /usr/bin/env python

# Copyright 2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# example of use of th SWIG interface

import os
import Texinfo

#input_file_name = '../../doc/texinfo.texi'
input_file_name = 'a.texi'
input_dir = os.path.dirname(input_file_name)
Texinfo.parser_conf_add_include_directory(input_dir)
document, status = Texinfo.parse_file(input_file_name)
Texinfo.txi_handle_parser_error_messages(document)

Texinfo.set_document_options(document)
Texinfo.txi_complete_document(document, Texinfo.STTF_nodes_tree | Texinfo.STTF_floats | Texinfo.STTF_setup_index_entries_sort_strings, 0)
Texinfo.txi_handle_document_error_messages(document)
 
tree = Texinfo.document_tree(document)
reader = Texinfo.txi_reader_new(tree, document)

def skip_to_cmdname(reader, cmdname):
    while True:
        next_token = Texinfo.txi_reader_read(reader)
        if not next_token:
            return None
        element = next_token.element
        elt_cmdname = Texinfo.element_cmdname(element)
        if elt_cmdname is not None and elt_cmdname == cmdname:
            return element

if __name__ == '__main__':
    while True:
        next_token = Texinfo.txi_reader_read(reader)
        if not next_token:
            break
        element = next_token.element
        print (Texinfo.element_type(element))
 
    Texinfo.txi_document_remove(document)

