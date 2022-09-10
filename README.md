# pepper_meshes

This package allows you to install the Aldebaran Pepper meshes.
In devel space, you have to type:
```sh
make pepper_meshes_meshes
```

When building a binary package, please make sure that with the installer the user has to agree to
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International Public License
that is given in the LICENSE file: this is the only requirement from Aldebaran.

Justification: in French law, only clicking/entering text is recognized as a virtual signature;
the LICENSE file is therefore not sufficient. Aldebaran allows you to redistribute those
meshes as long as they are given through an installer that asks the user to click/enter "ok/yes".


Also, the history of that repo will be frequently re-written ! we don't want to keep the old history
of the meshes as this could result in heavy cloning.

## Status

ROS Distro | Binary Status | Source status |
|-------------------|-------------------|-------------------|
Noetic | [![Build Status](https://build.ros.org/job/Nbin_uf64__pepper_meshes__ubuntu_focal_amd64__binary/badge/icon)](https://build.ros.org/job/Nbin_uf64__pepper_meshes__ubuntu_focal_amd64__binary/) | [![Build Status](https://build.ros.org/job/Nsrc_uF__pepper_meshes__ubuntu_focal__source/badge/icon)](https://build.ros.org/job/Nsrc_uF__pepper_meshes__ubuntu_focal__source/)
Melodic | [![Build Status](https://build.ros.org/job/Mbin_ub64__pepper_meshes__ubuntu_bionic_amd64__binary/badge/icon)](https://build.ros.org/job/Mbin_ub64__pepper_meshes__ubuntu_bionic_amd64__binary/) | [![Build Status](https://build.ros.org/job/Msrc_uB__pepper_meshes__ubuntu_bionic__source/badge/icon)](https://build.ros.org/job/Msrc_uB__pepper_meshes__ubuntu_bionic__source/)
Kinetic | ![passing](https://raw.githubusercontent.com/jenkinsci/embeddable-build-status-plugin/7c7eedc7617851f07a1f09629c33fee11cff50ab/src/doc/flat_unconfigured.svg) | ![passing](https://raw.githubusercontent.com/jenkinsci/embeddable-build-status-plugin/7c7eedc7617851f07a1f09629c33fee11cff50ab/src/doc/flat_unconfigured.svg)
