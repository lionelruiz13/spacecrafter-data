#
#	SpaceCrafter-data project !
#


cmake_minimum_required(VERSION 3.3)

########### Project name ###########
project(spacecrafter-data)
SET(SPACECRAFTER_DATA_YEAR "24")
SET(SPACECRAFTER_DATA_MONTH "11")
SET(SPACECRAFTER_DATA_DAY "29")
SET(VERSION "${SPACECRAFTER_DATA_YEAR}.${SPACECRAFTER_DATA_MINOR}.${SPACECRAFTER_DATA_DAY}")
SET(PACKAGE spacecrafter)


########### Find packages ###########


###########  Activate translation with gettext ########### 

########### Packaging info for CPack ###########
INCLUDE(InstallRequiredSystemLibraries)

SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SpaceCrafter Data")
SET(CPACK_PACKAGE_VENDOR "LSS Open Project")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")
SET(CPACK_PACKAGE_VERSION_MAJOR ${SPACECRAFTER_DATA_YEAR})
SET(CPACK_PACKAGE_VERSION_MINOR ${SPACECRAFTER_DATA_MONTH})
SET(CPACK_PACKAGE_VERSION_PATCH ${SPACECRAFTER_DATA_DAY})
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "spacecrafter-data")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "spacecrafter-data-${VERSION}")
SET(CPACK_SOURCE_GENERATOR "TGZ")
SET(CPACK_GENERATOR "TGZ")
SET(CPACK_PACKAGE_EXECUTABLES "spacecrafter-data" "Spacecrafter-DATA")
set(CPACK_SOURCE_IGNORE_FILES "/.git/" "/build/" )
INCLUDE(CPack)

###########  subdirectory  ########### 
add_subdirectory(data)
add_subdirectory(stars)
add_subdirectory(textures)
