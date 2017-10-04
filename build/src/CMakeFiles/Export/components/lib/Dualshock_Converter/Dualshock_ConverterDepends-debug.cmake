#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dualshock_Converter" for configuration "Debug"
set_property(TARGET Dualshock_Converter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Dualshock_Converter PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/components/lib/Dualshock_Converter.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "RTC112_vc12d;coil112_vc12d;omniORB421_rtd;omniDynamic421_rtd;omnithread40_rtd;advapi32;ws2_32;mswsock"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/Dualshock_Converter.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dualshock_Converter )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dualshock_Converter "${_IMPORT_PREFIX}/components/lib/Dualshock_Converter.lib" "${_IMPORT_PREFIX}/components/bin/Dualshock_Converter.dll" )

# Import target "Dualshock_ConverterComp" for configuration "Debug"
set_property(TARGET Dualshock_ConverterComp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Dualshock_ConverterComp PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/Dualshock_ConverterComp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dualshock_ConverterComp )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dualshock_ConverterComp "${_IMPORT_PREFIX}/components/bin/Dualshock_ConverterComp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
