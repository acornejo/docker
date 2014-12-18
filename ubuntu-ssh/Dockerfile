FROM phusion/baseimage
# maybe replace with phusion/baseimage
MAINTAINER github/acornejo

ENV HOME /root
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD ["/sbin/my_init"]

## Install an SSH of your choice.
ADD key.pub /tmp/your_key.pub
RUN cat /tmp/your_key.pub >> /root/.ssh/authorized_keys && rm -f /tmp/your_key.pub

# Install mesa utils
RUN apt-get update
RUN apt-get install -y mesa-utils
