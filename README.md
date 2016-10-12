# docker-hugo
This repository provides a Dockerfile used for the build stage of my Hugo blog using GitLab CI

The container is built to include git, python and pip. Pygments for syntax colouring is installed via pip.

The hugo binary is downloaded from GitHub. I have noticed that the naming for the .tar.gz URLs and the binaries are sometimes the same and sometimes differ, so I have added ENV variables as best I can to accommodate.
