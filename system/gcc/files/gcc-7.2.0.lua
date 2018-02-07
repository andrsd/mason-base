local pkgVer = "7.2.0"
local pkgName = "gcc-" .. pkgVer
local packages_dir = os.getenv('PACKAGES_DIR')

prepend_path("PATH",  pathJoin(packages_dir, "gcc", pkgVer, "bin"))
prepend_path("LIBRARY_PATH",  pathJoin(packages_dir, "gcc", pkgVer, "lib"))

setenv("CC",   "gcc-" .. pkgVer)
setenv("CXX",  "g++-" .. pkgVer)
local fc = "gfortran-" .. pkgVer
setenv("FC",  fc)
setenv("F90", fc)
setenv("F77", fc)
