-- TBB module

local packages_dir = os.getenv('PACKAGES_DIR')
local pkgName = myModuleName()
local pkgVer = myModuleVersion()
local tbb_dir = pathJoin(packages_dir, pkgName, pkgVer)

setenv("TBB_DIR", tbb_dir)
prepend_path("LIBRARY_PATH",      pathJoin(tbb_dir, "lib"))
