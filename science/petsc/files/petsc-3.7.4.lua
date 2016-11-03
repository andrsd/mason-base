-- PETSc

whatis("PETSc")

local packages_dir = os.getenv('PACKAGES_DIR')
local pkgVer = "3.7.4"
local arch   = os.getenv('ARCH')

setenv("PETSC_DIR",  pathJoin(packages_dir, "petsc", pkgVer, arch, "mpich"))
