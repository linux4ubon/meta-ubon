FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

#UBOOT_SRC = "git://github.com/linux4ubon/uboot-imx.git;protocol=https"
UBOOT_SRC = "git://{TOPDIR}/../uboot-imx;protocol=file"
SRCBRANCH = "imx_v2020.04_5.4.70_2.3.0"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "${AUTOREV}"

