#------------------------------------------------------------------------------
# Set the base image for subsequent instructions:
#------------------------------------------------------------------------------

FROM ceph/daemon:latest
MAINTAINER Marc Villacorta Morera <marc.villacorta@gmail.com>

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /

#------------------------------------------------------------------------------
# Add volumes for Ceph config and data:
#------------------------------------------------------------------------------

VOLUME ["/etc/ceph","/var/lib/ceph"]

#------------------------------------------------------------------------------
# Entrypoint:
#------------------------------------------------------------------------------

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]
