#! /bin/sh

swig -python texinfo.i
gcc -c -fPIC -g -O0 -Wformat-security -Wstrict-prototypes -Wall -Wno-parentheses -Wno-unused-parameter -Wextra -I ../C -I ../C/main/ tree_element.c
gcc -c -fPIC -g -O0 -Wformat-security -Wstrict-prototypes -Wall -Wno-parentheses -Wno-unused-parameter -Wextra -DDATADIR=\"/usr/share\" -I ../C -I ../C/parsetexi/ -I ../C/main/ -I ../C/convert/ -I /usr/include/python3.13/ texinfo_wrap.c
gcc -shared tree_element.o texinfo_wrap.o -o _Texinfo.so -L ../C/.libs/ -ltexinfo -ltexinfo-main -lperl

