-- PETSc

whatis("PETSc")

local packages_dir = os.getenv('PACKAGES_DIR')
local pkgName = myModuleName()
local pkgVer = myModuleVersion()
local arch   = os.getenv('ARCH')

pushenv("PETSC_DIR",  pathJoin(packages_dir, pkgName, pkgVer, arch, "mpich"))
