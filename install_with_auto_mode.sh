#!/bin/bash
set -e -x

# Installer should show up to the user if it is not an automated job.
if [ -n "$DEBIAN_FRONTEND" ]; then
    if [ "$DEBIAN_FRONTEND" = "noninteractive" ]; then
        INSTALL_MODE_FLAG=("--mode" "unattended")
    elif [ "$DEBIAN_FRONTEND" = "readline" ]; then
        INSTALL_MODE_FLAG=("--mode" "text")
    fi
fi

# Unless they specifically agree to the license.
if [ -n "$I_AGREE_TO_PEPPER_MESHES_LICENSE" ] && [ "$I_AGREE_TO_PEPPER_MESHES_LICENSE" = 1 ]; then
    INSTALL_MODE_FLAG=("--mode" "unattended")
fi

# Call the installer, pass our flag and all the remaining arguments
$1 "${INSTALL_MODE_FLAG[@]}" "${@:2}"
