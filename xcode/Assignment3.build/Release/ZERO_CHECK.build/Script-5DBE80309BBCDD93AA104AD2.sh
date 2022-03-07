#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode
  make -f /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode
  make -f /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode
  make -f /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode
  make -f /Users/aghouas/dev/computer-graphics/cs184/p3_1-pathtracer-current/xcode/CMakeScripts/ReRunCMake.make
fi

