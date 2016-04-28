local pkgVer = "3.5.1"
local pkgName = "llvm-" .. pkgVer

local packages_dir = os.getenv('PACKAGES_DIR')

prepend_path("PATH", pathJoin(packages_dir, "clang", pkgVer, "bin"))
prepend_path("LIBRARY_PATH", pathJoin(packages_dir, "clang", pkgVer, "lib"))
prepend_path("DYLD_LIBRARY_PATH", pathJoin(packages_dir, "clang", pkgVer, "lib"))
prepend_path("DYLD_LIBRARY_PATH", pathJoin(packages_dir, "clang", pkgVer, "lib/clang/3.5.1/lib/darwin"))

pushenv("CC",   "clang")
pushenv("CXX",  "clang++")
pushenv("LLVM", pathJoin(packages_dir, "clang", pkgVer, "bin"))
