# this file is supposed to be sourced by the get-files shell script

rm -f ${DOWNLOAD_DIR}/kernel-raspberry_pi-armv7l.tar.gz
wget -v https://github.com/hexdump0815/linux-mainline-and-mali-generic-stable-kernel/releases/download/${raspberry_pi_2_release_version}/${raspberry_pi_2_release_version}.tar.gz -O ${DOWNLOAD_DIR}/kernel-raspberry_pi-armv7l.tar.gz