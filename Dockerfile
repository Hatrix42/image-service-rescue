## -*- docker-image-name: "armbuild/scw-service-rescue:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update  \
 && apt-get -q -y upgrade \
 && apt-get install -y -q \
    busybox \
    ethstatus \
    htop \
    iotop \
    iperf \
    lsof \
    lvm2 \
    memtester \
    parted \
    partimage \
    rsync \
    socat \
    tcpdump \
    traceroute \
  && apt-get clean


# Clean
RUN find /usr/share/doc     -type f -delete \
 && find /usr/share/i18n    -type f -delete \
 && find /usr/share/locale  -type f -delete \
 && find /usr/share/man     -type f -delete \
 && find /var/cache/apt     -type f -delete \
 && find /var/lib/apt/lists -type f -delete


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
