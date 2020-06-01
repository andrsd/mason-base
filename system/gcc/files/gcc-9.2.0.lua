local pkgVer = myModuleVersion()
local pkgName = "gcc-" .. pkgVer
local packages_dir = os.getenv('PACKAGES_DIR')

prepend_path("PATH",  pathJoin(packages_dir, "gcc", pkgVer, "bin"))
prepend_path("LIBRARY_PATH",  pathJoin(packages_dir, "gcc", pkgVer, "lib"))

setenv("CC",   "gcc-" .. pkgVer)
setenv("CXX",  "g++-" .. pkgVer)
setenv("FC",   "gfortran-" .. pkgVer)
