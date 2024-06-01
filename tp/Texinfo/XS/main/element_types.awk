# Copyright 2014-2024 Free Software Foundation, Inc.
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

BEGIN {
    if (srcdir == "") {
        srcdir = "."
    }
    ETH = srcdir "/element_types.h"
    ETC = srcdir "/element_types.c"

    print "/* This file automatically generated by element_types.awk */" > ETH
    print "#ifndef ELEMENT_TYPES_H"                                      > ETH
    print "#define ELEMENT_TYPES_H"                                      > ETH
    print "enum element_type {"                                          > ETH
    print "ET_NONE,"                                                     > ETH

    print "/* This file automatically generated by element_types.awk */" > ETC
    print ""                                                             > ETC
    print "#include \"types_data.h\""                                    > ETC
    print ""                                                             > ETC
    print "TYPE_DATA type_data[] = {"                                         > ETC
    print "0, 0,"                                                        > ETC
}

!/^$/ && !/^#/ {
    print "ET_" $1 ","                                                > ETH
    array = array "\"" $1 "\",\n"
    t = $1
    type_flags[t] = $2
    line++
    types[line] = t

    last_type = "ET_" $1
}


END {
    print "};"                                                        > ETH     
    print                                                             > ETH 
    print "#define TXI_TREE_TYPES_NUMBER (" last_type " +1)"          > ETH
    print                                                             > ETH
    print "#endif"                                                    > ETH


    for (line_idx in types) {
        t = types[line_idx]
        flags_str = ""
        if (type_flags[t] != "") {
            split(type_flags[t], flags_array, ",")
            for (flag_idx in flags_array) {
              if (flag_idx == 1) {
                flags_str = flags_array[flag_idx]
              } else {
                old_str = flags_str
                flags_str = old_str "," flags_array[flag_idx]
              }
            }
        }
        if (flags_str == "") {
            flags = "0"
        } else {
            flags = "TF_" flags_str
            gsub (/,/, " | TF_", flags)
        }
        print "\"" t "\", " flags "," > ETC
    }
    print "};" > ETC
}

