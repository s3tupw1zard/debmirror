FROM ubuntu:noble

LABEL MAINTAINER="Manuel Merkl manuel.merkl@proton.me"

ARG DEBIAN_FRONTEND=noninteractive

COPY files /

ENV \
  MIRRORDIR="/debmirror" \
  CONFDIR="/status" \
  DEBUGFILE="debmirror-debug.log"

RUN \
  apt-get update && apt-get install -o Dpkg::Options::=--force-confdef -y gnupg debmirror xz-utils apt-transport-https && \
  chmod 0755 /debmirror_sync.sh && \
  mkdir -p ${CONFDIR} && \
  chmod 0777 ${CONFDIR} && \
  mkdir -p ${MIRRORDIR} && \
  chmod 0777 ${MIRRORDIR}

CMD ["/bin/bash", "/debmirror_sync.sh"]

