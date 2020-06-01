-- ccache

whatis("ccache")

local pkgName = "ccache"
local packages_dir = os.getenv('PACKAGES_DIR')


pushenv("CC",  "ccache " .. os.getenv('CC'))
pushenv("CXX", "ccache " .. os.getenv('CXX'))
pushenv("libmesh_CC",  os.getenv('CC'))
pushenv("libmesh_CXX", os.getenv('CXX'))

setenv("CCACHE_SLOPPINESS", "time_macros")

--prepend_path("PATH",  pathJoin(packages_dir, "ccache", "bin"))
