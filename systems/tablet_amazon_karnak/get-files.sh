# this file is supposed to be sourced by the get-files shell script

# right now i'm still using a postmarketos kernel+initrd=boot.img and will maybe later move to an own boot.img

# get a kernel etc. from a special portmarketos based build

amazon_karnak_pmos_release_version="linux-amazon-karnak-3.18.19-r3"

rm -rf ${DOWNLOAD_DIR}/boot-extra-${1}
mkdir -p ${DOWNLOAD_DIR}/boot-extra-${1}
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/boot.img.gz -O - | gunzip -c > ${DOWNLOAD_DIR}/boot-extra-${1}/boot.img
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/config-amazon-karnak.aarch64.gz -O - | gunzip -c > ${DOWNLOAD_DIR}/boot-extra-${1}/config-amazon-karnak.aarch64
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/initramfs-extra.gz -O - | gunzip -c > ${DOWNLOAD_DIR}/boot-extra-${1}/initramfs-extra
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/initramfs.gz -O - | gunzip -c > ${DOWNLOAD_DIR}/boot-extra-${1}/initramfs
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/vmlinuz.gz -O - | gunzip -c > ${DOWNLOAD_DIR}/boot-extra-${1}/vmlinuz.gz
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_karnak_pmos_release_version}/lib-modules.tar.gz -O ${DOWNLOAD_DIR}/boot-extra-${1}/lib-modules.tar.gz
