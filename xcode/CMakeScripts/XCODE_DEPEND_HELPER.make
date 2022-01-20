# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.CGL.Debug:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Debug/libCGL.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Debug/libCGL.a


PostBuild.glew.Debug:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Debug/libglew.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Debug/libglew.a


PostBuild.glfw.Debug:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Debug/libglfw3.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Debug/libglfw3.a


PostBuild.pathtracer.Debug:
PostBuild.pt31.Debug: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer
PostBuild.CGL.Debug: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer
PostBuild.glew.Debug: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer
PostBuild.glfw.Debug: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer:\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/libpt31.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Debug/libCGL.a\
	/usr/local/lib/libfreetype.dylib\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Debug/libglew.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Debug/libglfw3.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/pathtracer


PostBuild.pt31.Debug:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/libpt31.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/libpt31.a


PostBuild.CGL.Release:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Release/libCGL.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Release/libCGL.a


PostBuild.glew.Release:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Release/libglew.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Release/libglew.a


PostBuild.glfw.Release:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Release/libglfw3.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Release/libglfw3.a


PostBuild.pathtracer.Release:
PostBuild.pt31.Release: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer
PostBuild.CGL.Release: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer
PostBuild.glew.Release: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer
PostBuild.glfw.Release: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer:\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/libpt31.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Release/libCGL.a\
	/usr/local/lib/libfreetype.dylib\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Release/libglew.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Release/libglfw3.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/pathtracer


PostBuild.pt31.Release:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/libpt31.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/libpt31.a


PostBuild.CGL.MinSizeRel:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/MinSizeRel/libCGL.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/MinSizeRel/libCGL.a


PostBuild.glew.MinSizeRel:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/MinSizeRel/libglew.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/MinSizeRel/libglew.a


PostBuild.glfw.MinSizeRel:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/MinSizeRel/libglfw3.a


PostBuild.pathtracer.MinSizeRel:
PostBuild.pt31.MinSizeRel: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer
PostBuild.CGL.MinSizeRel: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer
PostBuild.glew.MinSizeRel: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer
PostBuild.glfw.MinSizeRel: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer:\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/libpt31.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/MinSizeRel/libCGL.a\
	/usr/local/lib/libfreetype.dylib\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/MinSizeRel/libglew.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/MinSizeRel/libglfw3.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/pathtracer


PostBuild.pt31.MinSizeRel:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/libpt31.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/libpt31.a


PostBuild.CGL.RelWithDebInfo:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/RelWithDebInfo/libCGL.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/RelWithDebInfo/libCGL.a


PostBuild.glew.RelWithDebInfo:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/RelWithDebInfo/libglew.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/RelWithDebInfo/libglew.a


PostBuild.glfw.RelWithDebInfo:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/RelWithDebInfo/libglfw3.a


PostBuild.pathtracer.RelWithDebInfo:
PostBuild.pt31.RelWithDebInfo: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer
PostBuild.CGL.RelWithDebInfo: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer
PostBuild.glew.RelWithDebInfo: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer
PostBuild.glfw.RelWithDebInfo: /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer:\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/libpt31.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/RelWithDebInfo/libCGL.a\
	/usr/local/lib/libfreetype.dylib\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/RelWithDebInfo/libglew.a\
	/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/RelWithDebInfo/libglfw3.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/pathtracer


PostBuild.pt31.RelWithDebInfo:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/libpt31.a:
	/bin/rm -f /Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/libpt31.a




# For each target create a dummy ruleso the target does not have to exist
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Debug/libCGL.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/MinSizeRel/libCGL.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/RelWithDebInfo/libCGL.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/Release/libCGL.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Debug/libglew.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/MinSizeRel/libglew.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/RelWithDebInfo/libglew.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glew/Release/libglew.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Debug/libglfw3.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/MinSizeRel/libglfw3.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/RelWithDebInfo/libglfw3.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/CGL/deps/glfw/src/Release/libglfw3.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Debug/libpt31.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/MinSizeRel/libpt31.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/RelWithDebInfo/libpt31.a:
/Users/aghouas/dev/personal/p3_1-pathtracer/xcode/Release/libpt31.a:
/usr/local/lib/libfreetype.dylib:
