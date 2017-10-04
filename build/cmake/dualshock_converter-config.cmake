# Dualshock_Converter CMake config file
#
# This file sets the following variables:
# Dualshock_Converter_FOUND - Always TRUE.
# Dualshock_Converter_INCLUDE_DIRS - Directories containing the Dualshock_Converter include files.
# Dualshock_Converter_IDL_DIRS - Directories containing the Dualshock_Converter IDL files.
# Dualshock_Converter_LIBRARIES - Libraries needed to use Dualshock_Converter.
# Dualshock_Converter_DEFINITIONS - Compiler flags for Dualshock_Converter.
# Dualshock_Converter_VERSION - The version of Dualshock_Converter found.
# Dualshock_Converter_VERSION_MAJOR - The major version of Dualshock_Converter found.
# Dualshock_Converter_VERSION_MINOR - The minor version of Dualshock_Converter found.
# Dualshock_Converter_VERSION_REVISION - The revision version of Dualshock_Converter found.
# Dualshock_Converter_VERSION_CANDIDATE - The candidate version of Dualshock_Converter found.

message(STATUS "Found Dualshock_Converter-1.0.0")
set(Dualshock_Converter_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(Dualshock_Converter_INCLUDE_DIRS
#    "C:/Program Files (x86)/Dualshock_Converter/include/dualshock_converter-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(Dualshock_Converter_IDL_DIRS
#    "C:/Program Files (x86)/Dualshock_Converter/include/dualshock_converter-1/idl")
set(Dualshock_Converter_INCLUDE_DIRS
    "C:/Program Files (x86)/Dualshock_Converter/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(Dualshock_Converter_IDL_DIRS
    "C:/Program Files (x86)/Dualshock_Converter/include//idl")


if(WIN32)
    set(Dualshock_Converter_LIBRARIES
        "C:/Program Files (x86)/Dualshock_Converter/components/lib/dualshock_converter.lib"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(Dualshock_Converter_LIBRARIES
        "C:/Program Files (x86)/Dualshock_Converter/components/lib/dualshock_converter.dll"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(Dualshock_Converter_DEFINITIONS ${<dependency>_DEFINITIONS})

set(Dualshock_Converter_VERSION 1.0.0)
set(Dualshock_Converter_VERSION_MAJOR 1)
set(Dualshock_Converter_VERSION_MINOR 0)
set(Dualshock_Converter_VERSION_REVISION 0)
set(Dualshock_Converter_VERSION_CANDIDATE )

