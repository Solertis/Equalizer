
# Copyright (c) 2013-2014 Stefan Eilemann <eile@eyescale.ch>

# additional compile-time definitions

list(APPEND COMMON_PACKAGE_DEFINES GLEW_MX) # always define GLEW_MX
list(APPEND COMMON_PACKAGE_DEFINES GLEW_NO_GLU)
if(GLEW_MX_FOUND)
  list(APPEND COMMON_PACKAGE_DEFINES EQ_FOUND_GLEW_MX)
else()
  list(APPEND COMMON_PACKAGE_DEFINES GLEW_STATIC EQ_GLEW_INTERNAL)
  if(X11_FOUND AND APPLE)
    list(APPEND COMMON_PACKAGE_DEFINES GLEW_APPLE_GLX)
  endif()
endif()

if(WIN32)
  list(APPEND COMMON_PACKAGE_DEFINES WGL) # deprecated
  list(APPEND COMMON_PACKAGE_DEFINES EQ_WGL_USED)
endif()

if(Qt5Gui_FOUND AND Qt5Gui_VERSION VERSION_GREATER 5.0)
  set(EQ_QT_USED 1)
endif()

if(APPLE)
  if(CMAKE_OSX_ARCHITECTURES MATCHES "64")
    set(CUDA_FOUND 0)
    message(STATUS "  Disable CUDA due to missing 64 bit libraries")
  else()
    set(CUDA_64_BIT_DEVICE_CODE OFF)
  endif()
  set(EQ_EXAMPLES_OSX_ARCHITECTURES ${CMAKE_OSX_ARCHITECTURES})
endif()

if(X11_FOUND)
  if(EQ_AGL_USED)
    set(X11_FOUND)
  else()
    set(EQ_GLX_USED 1)
    list(APPEND FIND_PACKAGES_DEFINES EQUALIZER_USE_X11)
    set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} X11")
    link_directories(${${X11_name}_LIBRARY_DIRS})
    include_directories(${X11_INCLUDE_DIRS})
  endif()
endif()

include(EqGLLibraries)
if(EQ_GLX_USED)
  list(APPEND COMMON_PACKAGE_DEFINES GLX) # deprecated
  list(APPEND COMMON_PACKAGE_DEFINES EQ_GLX_USED)
  if(HWSD_COMPONENTS)
    list(REMOVE_ITEM HWSD_COMPONENTS gpu_cgl)
    list(REMOVE_ITEM HWSD_LIBRARIES hwsd_gpu_cgl)
  endif()
  if(MAGELLAN_FOUND AND NOT APPLE)
    list(APPEND COMMON_PACKAGE_DEFINES EQUALIZER_USE_MAGELLAN_GLX)
  endif()
elseif(EQ_AGL_USED)
  list(APPEND COMMON_PACKAGE_DEFINES AGL) # deprecated
  list(APPEND COMMON_PACKAGE_DEFINES EQ_AGL_USED)
  if(HWSD_COMPONENTS)
    list(REMOVE_ITEM HWSD_COMPONENTS gpu_glx)
    list(REMOVE_ITEM HWSD_LIBRARIES hwsd_gpu_glx)
  endif()
endif()

if(EQ_QT_USED)
  list(APPEND COMMON_PACKAGE_DEFINES EQ_QT_USED)
endif()

if(NOT EQUALIZER_USE_OSG)
  set(OPENSCENEGRAPH_FOUND)
endif()

if(NOT EQUALIZER_USE_HWLOC)
  set(HWLOC_FOUND)
  set(HWLOC_GL_FOUND)
endif()
if(HWLOC_GL_FOUND)
  list(APPEND COMMON_PACKAGE_DEFINES EQUALIZER_USE_HWLOC_GL)
endif()
