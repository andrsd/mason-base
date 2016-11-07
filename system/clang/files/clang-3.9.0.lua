local pkgVer = "3.9.0"
local pkgName = "llvm-" .. pkgVer

local packages_dir = os.getenv('PACKAGES_DIR')

prepend_path("PATH", pathJoin(packages_dir, "clang", pkgVer, "bin"))
prepend_path("LIBRARY_PATH", pathJoin(packages_dir, "clang", pkgVer, "lib"))

pushenv("CC",   "clang")
pushenv("CXX",  "clang++")
pushenv("LLVM", pathJoin(packages_dir, "clang", pkgVer, "bin"))
