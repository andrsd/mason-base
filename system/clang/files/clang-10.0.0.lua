local pkgVer = myModuleVersion()
local packages_dir = os.getenv('PACKAGES_DIR')

prepend_path("PATH", pathJoin(packages_dir, "clang", pkgVer, "bin"))
prepend_path("LIBRARY_PATH", pathJoin(packages_dir, "clang", pkgVer, "lib"))

pushenv("CC",   "clang")
pushenv("CXX",  "clang++")
pushenv("LLVM", pathJoin(packages_dir, "clang", pkgVer, "bin"))

prepend_path("C_INCLUDE_PATH", "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include")

prepend_path("CPLUS_INCLUDE_PATH", "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include")
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(packages_dir, "clang", pkgVer, "include", "c++", "v1"))
