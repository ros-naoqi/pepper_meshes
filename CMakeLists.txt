cmake_minimum_required(VERSION 3.5)
project(pepper_meshes)

find_package(ament_cmake REQUIRED)

# When getting a new binay, the MD5 might change, and the folder hierarchy too
# read comments below to adapt

set(TMP_DIR ${CMAKE_CURRENT_BINARY_DIR}/tmp)
set(INSTALLER_PATH ${TMP_DIR}/installer.run)

if(${CMAKE_HOST_SYSTEM_PROCESSOR} MATCHES "$i.86$")
  message(STATUS "Downloading 32 bit installer")
  set(INSTALLER_URL "https://github.com/ros-naoqi/pepper_meshes_installer/raw/master/peppermeshes-0.2.0-linux-installer.run")
  set(INSTALLER_MD5 9e78f24b52838e704210881f92c0983d)
elseif(${CMAKE_HOST_SYSTEM_PROCESSOR} STREQUAL "x86_64")
  message(STATUS "Downloading 64 bit installer")
  set(INSTALLER_URL "https://github.com/ros-naoqi/pepper_meshes_installer/raw/master/peppermeshes-0.2.0-linux-x64-installer.run")
  set(INSTALLER_MD5 9e78f24b52838e704210881f92c0983d)
else()
  message(FATAL_ERROR "Mesh installer is not compatible with your host architecture '${CMAKE_HOST_SYSTEM_PROCESSOR}'")
endif()

file(DOWNLOAD ${INSTALLER_URL} ${INSTALLER_PATH}
  SHOW_PROGRESS
  INACTIVITY_TIMEOUT 60
  EXPECTED_MD5 ${INSTALLER_MD5}
)

# specify the interesting folder in the archive. You might want to change
# that for a new binary where the structure is different
set(TMP_MESH_PATH ${TMP_DIR}/meshes)

# Where to install the meshes and textures
# relative to the share folder of the package.
set(INSTALL_DESTINATION_IN_SHARE ${PROJECT_NAME})

# install the meshes in the build directory when building
message(STATUS "Will unpack meshes from the installer: \n${INSTALLER_PATH} --prefix ${TMP_DIR}")
add_custom_target(install_meshes ALL
  COMMAND chmod +x ${INSTALLER_PATH}
  COMMAND ${INSTALLER_PATH} --prefix ${TMP_DIR}
  BYPRODUCTS ${TMP_MESH_PATH}
  TERMINAL
)

# install the archive
install(DIRECTORY ${TMP_MESH_PATH}
        DESTINATION share/${PROJECT_NAME}
)

ament_package()
