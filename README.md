# Basic development docker images

This repository contains a basic ubuntu containers for development (aka
compiling). Specifically ubuntu-dev includes the following:

- nano
- vim
- tmux
- less
- gcc
- g++
- make
- man pages
- git
- dpkg-dev
- python-dev

To log into the container, the username is `dev` and the password is
`dev`. If you drop a public key on the resources folder, the `dev` user
will be configured to provide password less ssh access to the key owner.

The `ubuntu-nvidia` and `ubuntu-ati` containers extend the basic
container with the GLX extensions for either nvidia or ati to use
graphic acceleration. These images must be built in a host that has an
nvidia or ati card with the same version of the drivers installed on
their system. The `build.sh` script should make this work as
appropriate.

# Getting started

First you must install docker (and any docker dependencies) on your
machine.

Next, simply checkout this repository and perform:

    ./build.sh

You might want to get up and stretch, since this will take a few
minutes.

After that, you can bring up new instances by doing:

    ./run.sh N

Where N is a positive integer that represents the instance number.
