###################################################################################
#
# PDMlib - Particle Data Management library
#
# Copyright (c) 2014-2017 Advanced Institute for Computational Science(AICS), RIKEN.
# All rights reserved.
#
# Copyright (c) 2017 Research Institute for Information Technology (RIIT), Kyushu University.
# All rights reserved.
#
###################################################################################

set(CMAKE_SYSTEM_NAME Linux)

include(CMakeForceCompiler)

if(with_MPI)
  CMAKE_FORCE_C_COMPILER(mpifcc GNU)
  CMAKE_FORCE_CXX_COMPILER(mpiFCC GNU)
  CMAKE_FORCE_Fortran_COMPILER(mpifrt GNU)

  #CMAKE_FORCE_Fortran_Compiler is not supported ver. 2.6
  #set(CMAKE_Fortran_COMPILER mpifrtpx GNU)
  #set(CMAKE_Fortran_COMPILER_WORKS true)
  #set(CMAKE_Fortran_LINK_EXECUTABLE "${CMAKE_CXX_COMPILER}")
else()
  CMAKE_FORCE_C_COMPILER(fcc GNU)
  CMAKE_FORCE_CXX_COMPILER(FCC GNU)
  CMAKE_FORCE_Fortran_COMPILER(frt GNU)

  #CMAKE_FORCE_Fortran_Compiler is not supported ver. 2.6
  #set(CMAKE_Fortran_COMPILER frtpx GNU)
  #set(CMAKE_Fortran_COMPILER_WORKS true)
  #set(CMAKE_Fortran_LINK_EXECUTABLE "${CMAKE_CXX_COMPILER}")
endif()

set(CMAKE_FIND_ROOT_PATH /opt/FJSVpclang/1.2.0)   # RIIT CX400

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(TARGET_ARCH "INTEL_F_TCS")
set(USE_F_TCS "YES")
