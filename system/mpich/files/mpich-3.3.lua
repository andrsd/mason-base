-- MPICH

whatis("MPICH")

local packages_dir = os.getenv('PACKAGES_DIR')
local pkgName = myModuleName()
local pkgVer = myModuleVersion()
local arch    = os.getenv('ARCH')

prepend_path("PATH",  pathJoin(packages_dir, pkgName, pkgVer, arch, "bin"))
prepend_path("LIBRARY_PATH", pathJoin(packages_dir, pkgName, pkgVer, arch, "lib"))

pushenv("CC",  "mpicc")
pushenv("CXX", "mpicxx")
pushenv("FC",  "mpif90")
pushenv("F90", "mpif90")
pushenv("F77", "mpif77")


local modulepath_root = os.getenv("MODULEPATH_ROOT")
prepend_path('MODULEPATH', pathJoin(modulepath_root, "mpi", arch, pkgName))
