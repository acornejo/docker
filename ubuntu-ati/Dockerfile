FROM acornejo/ubuntu-dev:latest
MAINTAINER Alex Cornejo <acornejo@gmail.com>

# install xserver (required for proper driver video install)
RUN apt-get update && apt-get install -q -y --force-yes --no-install-recommends x-window-system

# copy over resources
ADD resources/ /tmp/

# install video driver
RUN bash /tmp/video-driver-install

# clean up resources
RUN rm -fr /tmp/*
