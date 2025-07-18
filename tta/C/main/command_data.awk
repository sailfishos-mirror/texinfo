# Copyright 2010-2025 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#######################################################
# From gawk manual
# ord.awk --- do ord and chr

# Global identifiers:
#    _ord_:        numerical values indexed by characters
#    _ord_init:    function to initialize _ord_

BEGIN    { _ord_init() }

function _ord_init(    low, high, i, t)
{
    low = sprintf("%c", 7) # BEL is ascii 7
    if (low == "\a") {    # regular ascii
        low = 0
        high = 127
    } else if (sprintf("%c", 128 + 7) == "\a") {
        # ascii, mark parity
        low = 128
        high = 255
    } else {        # ebcdic(!)
        low = 0
        high = 255
    }

    for (i = low; i <= high; i++) {
        t = sprintf("%c", i)
        _ord_[t] = i
    }
}

function ord(str,    c)
{
    # only first character is of interest
    c = substr(str, 1, 1)
    return _ord_[c]
}

#######################################################


BEGIN {
    bs_escapes["\\n"] = "\n"
    bs_escapes["\\f"] = "\f"
    bs_escapes["\\t"] = "\t"
    bs_escapes["\\\\"] = "\\"
    bs_escapes["\\\""] = "\""
    bs_escapes["\\x20"] = " "

    for (v in bs_escapes) {
        inv_bs_escapes[bs_escapes[v]] = v
    }

    if (srcdir == "") {
        srcdir = "."
    }
    CD = srcdir "/command_data.c"
    CI = srcdir "/command_ids.h"
    GMC = srcdir "/global_multi_commands_case.c"
    GUC = srcdir "/global_unique_commands_case.c"
    GCT = srcdir "/global_commands_types.h"

    print "/* This file automatically generated by command_data.awk */" > CI
    print "#ifndef COMMAND_IDS_H"                 > CI
    print "#define COMMAND_IDS_H"                 > CI
    print                                         > CI
    print "/* Useful aliases */"                  > CI
    print "#define CM_hex_09 CM_TAB"              > CI
    print "#define CM_hex_0a CM_NEWLINE"          > CI
    print "#define CM_hex_20 CM_SPACE"            > CI
    print "#define CM_hex_21 CM_EXCLAMATION_MARK" > CI
    print "#define CM_hex_22 CM_DOUBLE_QUOTE"     > CI
    print "#define CM_hex_26 CM_AMPERSAND"        > CI
    print "#define CM_hex_27 CM_APOSTROPHE"       > CI
    print "#define CM_hex_2a CM_ASTERISK"         > CI
    print "#define CM_hex_2c CM_COMMA"            > CI
    print "#define CM_hex_2d CM_HYPHEN"           > CI
    print "#define CM_hex_2e CM_FULL_STOP"        > CI
    print "#define CM_hex_2f CM_SLASH"            > CI
    print "#define CM_hex_3a CM_COLON"            > CI
    print "#define CM_hex_3d CM_EQUALS"           > CI
    print "#define CM_hex_3f CM_QUESTION_MARK"    > CI
    print "#define CM_hex_40 CM_AT_SIGN"          > CI
    print "#define CM_hex_5c CM_BACKSLASH"        > CI
    print "#define CM_hex_5e CM_CIRCUMFLEX"       > CI
    print "#define CM_hex_60 CM_BACKQUOTE"        > CI
    print "#define CM_hex_7b CM_OPEN_BRACE"       > CI
    print "#define CM_hex_7c CM_VERTICAL_BAR"     > CI
    print "#define CM_hex_7d CM_CLOSE_BRACE"      > CI
    print "#define CM_hex_7e CM_TILDE"            > CI
    print                                         > CI
    print "/* Defined on MS-Windows */"           > CI
    print "#undef CM_NONE"                        > CI
    print                                         > CI
    print "enum command_id {"                     > CI
    print "CM_NONE,"                              > CI
    print                                         > CI

    print "/* This file automatically generated by command_data.awk */" > GMC
    print "/* global in command_data.txt */" "\n" > GMC

    print "/* This file automatically generated by command_data.awk */" > GUC
    print "/* global_unique in command_data.txt */" "\n" > GUC

    print "/* This file automatically generated by command_data.awk */" > GCT
    print "#ifndef GLOBAL_COMMANDS_TYPES_H"                 > GCT
    print "#define GLOBAL_COMMANDS_TYPES_H" "\n"            > GCT
    print "#include \"tree_types.h\"" "\n"                  > GCT
    print "typedef struct GLOBAL_COMMANDS {"                > GCT
    print "    /* Elements that should be unique. */"       > GCT
}

!/^$/ && !/^#/ {
    if ($1 in bs_escapes) {
        c = bs_escapes[$1]
    } else {
        c = $1
    }
    commands[c] = $2
    data[c] = $3
    args_nr[c] = $4
}

END {
    print "/* This file automatically generated by command_data.awk */" "\n" > CD
    print "#include \"builtin_commands.h\"" "\n" > CD
    print "COMMAND builtin_command_data[] = {" > CD

    print "{0, 0, 0, 0, 0}," > CD

    # We want the output sorted so we can use bsearch
    PROCINFO["sorted_in"]="@ind_str_asc"
    i = 1
    for (c in commands) {
        i++
        # Single character commands with unusual names
        if (c ~ /^[^[:alpha:]]$/) {
                if (c in inv_bs_escapes) {
                    c2 = inv_bs_escapes[c]
                } else
                    c2 = c
                printf "CM_hex_%02x,\n", ord(c) > CI
        } else {
                c2 = c
                print "CM_" c "," > CI
        }

        flags_str = ""
        other_flags_str = ""
        if (commands[c] != "") {
            split(commands[c], flags_array, ",")
            for (flag_idx in flags_array) {
              if (flag_idx == 1) {
                # first flag is the category
                flags_str = flags_array[flag_idx]
                main_category = flags_str
                # all the line and block commands have the no_paragraph flag
                if (main_category == "line" || main_category == "block") {
                  old_str = flags_str
                  flags_str = old_str "," "no_paragraph"
                }
              } else {
                if (flags_array[flag_idx] == "global") {
                  # float and footnote got a trailing s in the structure, so we
                  # do not generate autoamtic code for them.
                  if (c != "float" && c != "footnote") {
                    print "GLOBAL_CASE(" c ");" > GMC
                    tmp_str = global_multi_commands_struct_str
                    global_multi_commands_struct_str = tmp_str "   ELEMENT_LIST " c ";\n"
                  }
                } else if (flags_array[flag_idx] == "global_unique") {
                  # setfilename is special, it can also happen in @include
                  if (c != "setfilename") {
                    print "GLOBAL_UNIQUE_CASE(" c ");" > GUC
                  }
                  tmp_str = global_unique_commands_struct_str
                  global_unique_commands_struct_str = tmp_str "   ELEMENT *" c ";\n"
                }
                # filter out other flags.  Use
                # an array and not a regexp because word boundary matching
                # does not seems to be portable and we want to be sure to
                # match correctly even if an ignored flag is a substring of
                # another flag
                if (flags_array[flag_idx] != "letter_no_arg" \
                    && flags_array[flag_idx] != "inline_format" \
                    && flags_array[flag_idx] != "inline_conditional" \
                    && flags_array[flag_idx] != "in_index" \
                    && flags_array[flag_idx] != "in_def" \
                    && flags_array[flag_idx] != "brace_code" \
                    && flags_array[flag_idx] != "explained" \
                    && flags_array[flag_idx] != "unnumbered" \
                    && flags_array[flag_idx] != "appendix" \
                    && flags_array[flag_idx] != "formatted_line" \
                    && flags_array[flag_idx] != "formatted_nobrace" \
                    && flags_array[flag_idx] != "formattable_line" \
                    && flags_array[flag_idx] != "non_formatted_brace" \
                    && flags_array[flag_idx] != "non_formatted_block") {
                  old_str = flags_str
                  flags_str = old_str "," flags_array[flag_idx]
                } else {
                  if (other_flags_str == "") {
                    other_flags_str = flags_array[flag_idx]
                  } else {
                    old_str = other_flags_str
                    other_flags_str = old_str "," flags_array[flag_idx]
                  }
                }
              }
            }
        } else {
            print "ERROR: missing flags " c > "/dev/stderr"
            exit 1
        }

        # could check that it is brace, block, nobrace or line, but it is not
        # too important as an error should appear compiling the C output file
        # if another category is used
        if (main_category == "") {
            print "ERROR: no category " c > "/dev/stderr"
            exit 1
        }

        flags = "CF_" flags_str
        gsub (/,/, " | CF_", flags)

        if (other_flags_str == "") {
            other_flags = "0"
        } else {
            other_flags = "CF_" other_flags_str
            gsub (/,/, " | CF_", other_flags)
        }

        if (data[c] != "") {
            data_type = data[c]
        } else {
            data_type = "other"
        }

        data_types[main_category][data_type] = 1

        if (args_nr[c] != "") {
            args_nr_data = args_nr[c]
        } else {
            if (main_category == "block" || main_category == "nobrace" \
                || (main_category == "brace" && data_type == "noarg") \
                || (main_category == "line" && data_type == "lineraw")) {
              args_nr_data = "0"
            } else {
              args_nr_data = "1"
            }
        }

        command_data = toupper(main_category) "_" data_type

        print "{\"" c2 "\", " flags ", " other_flags ", " command_data ", " args_nr_data "}," > CD
    }
    print "};" > CD
    print "};" > CI
    print      > CI
    print "#define BUILTIN_CMD_NUMBER " i > CI
    print                                 > CI

    print global_unique_commands_struct_str   > GCT
    print "   /* Arrays of elements */"       > GCT
    print "   ELEMENT_LIST dircategory_direntry;\n" > GCT
    print "   ELEMENT_LIST floats;"                > GCT
    print "   ELEMENT_LIST footnotes;\n"           > GCT
    print global_multi_commands_struct_str    > GCT
    print "} GLOBAL_COMMANDS;\n"              > GCT
    print "#endif"                            > GCT

    for (main_category in data_types) {
      upper_case_category = toupper(main_category)
      print "#define TXI_CMD_CATEGORY_" upper_case_category " \\" > CI
      for (data_type in data_types[main_category]) {
        print "  tcc_cmd_category("data_type", "main_category", "upper_case_category") \\"  > CI
      }
      print                                 > CI
    }
    print "#endif"                        > CI
}


