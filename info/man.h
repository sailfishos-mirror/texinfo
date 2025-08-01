/* man.h: Defines and external function declarations for man.c.

   Copyright 1993-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

   Originally written by Brian Fox. */

#ifndef INFO_MAN_H
#define INFO_MAN_H

#define MANPAGE_FILE_BUFFER_NAME "*manpages*"

int check_manpage_node (const char *pagename);
extern NODE *get_manpage_node (const char *pagename);

#endif /* INFO_MAN_H */
