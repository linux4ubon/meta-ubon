FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

#KERNEL_SRC = "git://github.com/linux4ubon/linux-imx.git;protocol=https"
KERNEL_SRC = "git://{TOPDIR}/../linux-imx;protocol=file"
SRCBRANCH = "imx_5.4.70_2.3.0"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "${AUTOREV}"

do_copy_defconfig () {
    install -d ${B}
    if [ ${DO_CONFIG_V7_COPY} = "yes" ]; then
        # copy latest imx_v7_defconfig to use for mx6, mx6ul and mx7
        mkdir -p ${B}
        cp ${S}/arch/arm/configs/ubon_ug200a1_defconfig ${B}/.config
        cp ${S}/arch/arm/configs/ubon_ug200a1_defconfig ${B}/../defconfig
    else
        # copy latest imx_v8_defconfig to use for mx8
        mkdir -p ${B}
        cp ${S}/arch/arm64/configs/imx_v8_defconfig ${B}/.config
        cp ${S}/arch/arm64/configs/imx_v8_defconfig ${B}/../defconfig
    fi
}

