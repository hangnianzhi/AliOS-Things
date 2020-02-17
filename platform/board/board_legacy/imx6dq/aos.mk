NAME := board_imx6dq

$(NAME)_MBINS_TYPE := kernel
$(NAME)_VERSION    := 1.0.1
$(NAME)_SUMMARY    := configuration for board imx6dq
MODULE             := imx6dq
HOST_ARCH          := Cortex-A9
HOST_MCU_FAMILY    := mcu_imx6
HOST_MCU_NAME      := imx6dq
SUPPORT_MBINS      := no

$(NAME)_COMPONENTS += $(HOST_MCU_FAMILY) kernel_init cli

$(NAME)_SOURCES := board.c

GLOBAL_INCLUDES += .

GLOBAL_DEFINES += STDIO_UART=0 CHIP_MX6DQ  BOARD_SMART_DEVICE	BOARD_REV_A

CONFIG_SYSINFO_PRODUCT_MODEL := ALI_AOS_IMX6DQ
CONFIG_SYSINFO_DEVICE_NAME   := IMX6DQ

GLOBAL_CFLAGS += -DSYSINFO_PRODUCT_MODEL=\"$(CONFIG_SYSINFO_PRODUCT_MODEL)\"
GLOBAL_CFLAGS += -DSYSINFO_DEVICE_NAME=\"$(CONFIG_SYSINFO_DEVICE_NAME)\"
