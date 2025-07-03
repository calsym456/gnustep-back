# -*-makefile-*-
#   back.make
#
#   Makefile flags and configs to build with the back library.
#
#   Copyright (C) 2001 Free Software Foundation, Inc.
#
#   Author:  Nicola Pero <n.pero@mi.flashnet.it>
#   Based on code originally in the gnustep make package
#
#   This file is part of the GNUstep Back Library.
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; see the file COPYING.LIB.
#  If not, see <http://www.gnu.org/licenses/> or write to the 
#  Free Software Foundation, 51 Franklin Street, Fifth Floor, 
#  Boston, MA 02110-1301, USA.

ifeq ($(BACK_MAKE_LOADED),)
BACK_MAKE_LOADED=yes

ifeq ($(BACKEND_BUNDLE),)
  GRAPHIC_LIBS=-lGL -lcairo -lfreetype  -lXrender -lcairo -lX11 -lXext  -lXft  -lfontconfig  -lXrandr -lXcursor -lXfixes -lXmu -lXt -lXext -lX11  
  GRAPHIC_CFLAGS= -I/usr/include/cairo -I/usr/include/libpng16 -I/usr/include/freetype2 -I/usr/include/pixman-1  -I/usr/include/cairo -I/usr/include/libpng16 -I/usr/include/freetype2 -I/usr/include/pixman-1  -Wdate-time -D_FORTIFY_SOURCE=2 
  GRAPHIC_LFLAGS=-Wl,-z,relro -Wl,-z,now -Wl,--no-undefined
  X_PRE_LIBS= -lSM -lICE

  BACKEND_LDFLAGS =
  BACKEND_LIBS = -lgnustep-cairo
  BACKEND_DEFINE = -DBACKEND_LIBRARY=1 -Dcairo_BACKEND_LIBRARY=1

  SYSTEM_INCLUDES = $(CONFIG_SYSTEM_INCL) $(GRAPHIC_CFLAGS)
  SYSTEM_LDFLAGS =
  SYSTEM_LIB_DIR = $(GRAPHIC_LFLAGS)
  SYSTEM_LIBS = $(GRAPHIC_LIBS)
endif

endif # BACK_MAKE_LOADED


