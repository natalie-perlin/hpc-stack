help([[
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

family("MetaCompiler")

conflict(pkgName)
conflict("hpc-gnu", "hpc-gcc","hpc-intel")

local compiler = pathJoin("intel-classic",pkgVersion)
load(compiler)
prereq(compiler)

local opt = os.getenv("HPC_OPT") or os.getenv("OPT") or "/opt/modules"
local mpath = pathJoin(opt,"modulefiles/compiler","intel-classic",pkgVersion)
prepend_path("MODULEPATH", mpath)

setenv("FC",  "ifort")
setenv("CC",  "icc")
setenv("CXX", "icpc")

setenv("SERIAL_FC",  "ifort")
setenv("SERIAL_CC",  "icc")
setenv("SERIAL_CXX", "icpc")

whatis("Name: ".. pkgName)
whatis("Version: " .. pkgVersion)
whatis("Category: Compiler")
whatis("Description: Intel-classic Compiler Family and module access")

