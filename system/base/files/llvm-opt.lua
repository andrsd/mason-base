conflict("gnu-opt")

local pkgName = myModuleName()
local modulepath_root = os.getenv("MODULEPATH_ROOT")

prepend_path('MODULEPATH', pathJoin(modulepath_root, "compiler", pkgName))
pushenv("ARCH", pkgName)
