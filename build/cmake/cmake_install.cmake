# Install script for directory: C:/Users/fumi0/workspace/DualShock_Converter_cpp/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Dualshock_Converter")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "component" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/lib/pkgconfig" TYPE FILE FILES "C:/Users/fumi0/workspace/DualShock_Converter_cpp/build/cmake/dualshock_converter.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/components/share/dualshock_converter-1" TYPE FILE FILES
    "C:/Users/fumi0/workspace/DualShock_Converter_cpp/build/cmake/dualshock_converter-config.cmake"
    "C:/Users/fumi0/workspace/DualShock_Converter_cpp/build/cmake/dualshock_converter-config-version.cmake"
    )
endif()

