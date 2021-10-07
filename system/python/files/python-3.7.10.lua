-- Python

whatis("Python 3.7.10")

local packages_dir = os.getenv('PACKAGES_DIR')
local pkgName = myModuleName()
local pkgVer = myModuleVersion()

prepend_path("PATH", pathJoin(packages_dir, pkgName, pkgVer, "bin"))
-- prepend_path("DYLD_LIBRARY_PATH",   $env(PACKAGES_DIR)/python/3.7.10/lib
