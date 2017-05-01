# docker-hugo
This repository provides a Dockerfile used for the build stage of my Hugo blog using GitLab CI.

It is based off the work done over here: https://github.com/publysher/docker-hugo/, with some changes:

- I am using Alpine Linux as a base and not Debian (makes for a smaller footprint)
- Pygments is installed from PyPI, which provides a more up to date version of the package as opposed to the system package manager.
- The Hugo binary is currently 0.20.6 which is newer than the one currently in the publysher repo.
- I am currently using this Dockerfile to create my final image, so I have removed the ONBUILD instructions for use in inherited images (I may come back to this later).

The container is built to include git, python and pip. Pygments for syntax colouring is installed via pip.

The hugo binary is downloaded from GitHub. I have noticed that the naming for the .tar.gz URLs and the binaries are sometimes the same and sometimes differ, so I have added ENV variables as best I can to accommodate.
