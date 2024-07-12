/usr/bin/gpg --keyring /usr/share/keyrings/ubuntu-archive-keyring.gpg --export \
| /usr/bin/gpg --no-default-keyring --keyring trustedkeys.gpg --import

usr/bin/debmirror -v --config-file=${CONFDIR}/debmirror.conf ${MIRRORDIR} # >> ${CONFDIR}/${DEBUGFILE} 2>&1
