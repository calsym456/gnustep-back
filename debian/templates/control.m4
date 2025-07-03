# -*-debian-control-*-
# NOTE: debian/control is generated from debian/templates/control.m4
Source: gnustep-back
Maintainer: Debian GNUstep maintainers <pkg-gnustep-maintainers@lists.alioth.debian.org>
Uploaders: Eric Heintzmann <heintzmann.eric@free.fr>,
	   Gürkan Myczko <tar@debian.org>,
	   Yavor Doganov <yavor@gnu.org>
Section: gnustep
Priority: optional
Build-Depends: debhelper-compat (= 13),
	       m4,
	       libgnustep-gui-dev (>= V_GUI),
	       libice-dev,
	       libxext-dev,
	       libxcursor-dev,
	       libxmu-dev,
	       libfreetype-dev,
	       libxft-dev,
	       libxrandr-dev,
	       libfontconfig-dev,
	       libgl1-mesa-dev,
	       pkg-config,
	       libcairo2-dev,
	       texinfo
Rules-Requires-Root: no
Standards-Version: 4.6.1
Vcs-Browser: https://salsa.debian.org/gnustep-team/gnustep-back
Vcs-Git: https://salsa.debian.org/gnustep-team/gnustep-back.git
Homepage: http://gnustep.org

Package: gnustep-back`'SOV_BACK
Architecture: all
Depends: gnustep-back`'SOV_BACK-cairo | gnustep-back`'SOV_BACK-alt,
	 ${misc:Depends}
Suggests: fonts-dejavu | gsfonts-x11
Provides: gnustep-back
Description: GNUstep GUI Backend
 It is a backend component for the GNUstep GUI Library.
 The implementation of the GNUstep GUI Library is designed in two parts.
 The first part is the front-end component which is independent of platform
 and display system.  This front-end is combined with a back-end
 component which handles all of the display system dependent such as
 specific calls to the X Window System.
 .
 This is an empty package that depends on the various backends.

Package: gnustep-back`'SOV_BACK-cairo
Architecture: any
Depends: gnustep-back-common (>= V_GUI),
	 ${shlibs:Depends},
	 ${misc:Depends}
Provides: gnustep-back`'SOV_BACK-alt
Description: GNUstep GUI Backend (cairo)
 It is a backend component for the GNUstep GUI Library.
 The implementation of the GNUstep GUI Library is designed in two parts.
 The first part is the front-end component which is independent of platform
 and display system.  This front-end is combined with a back-end
 component which handles all of the display system dependent such as
 specific calls to the X Window System.
 .
 This package provides the cairo backend.

Package: gnustep-back`'SOV_BACK-xlib
Architecture: any
Depends: gnustep-back-common (>= V_GUI),
	 ${shlibs:Depends},
	 ${misc:Depends}
Provides: gnustep-back`'SOV_BACK-alt
Description: GNUstep GUI Backend (xlib)
 It is a backend component for the GNUstep GUI Library.
 The implementation of the GNUstep GUI Library is designed in two parts.
 The first part is the front-end component which is independent of platform
 and display system.  This front-end is combined with a back-end
 component which handles all of the display system dependent such as
 specific calls to the X Window System.
 .
 This package provides the deprecated xlib backend.

Package: gnustep-back-common
Architecture: any
Depends: fonts-freefont-ttf,
	 ${shlibs:Depends},
	 ${misc:Depends}
Description: GNUstep GUI Backend - common files
 It is a backend component for the GNUstep GUI Library.
 The implementation of the GNUstep GUI Library is designed in two parts.
 The first part is the front-end component which is independent of platform
 and display system.  This front-end is combined with a back-end
 component which handles all of the display system dependent such as
 specific calls to the X Window System.
 .
 This package contains the common files needed by the GNUstep GUI Backend.
