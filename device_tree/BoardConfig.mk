LOCAL_PATH := $(call my-dir)

TARGET_ARCH             := arm
TARGET_ARCH_VARIANT     := armv7-a-neon
TARGET_CPU_VARIANT      := cortex-a7
TARGET_CPU_ABI          := armeabi-v7a
TARGET_CPU_ABI2         := armeabi

TARGET_BOARD_PLATFORM        := exynos3475
TARGET_BOOTLOADER_BOARD_NAME := universal3475
TARGET_NO_BOOTLOADER         := true
TARGET_NO_RADIOIMAGE         := true

BOARD_KERNEL_BASE           := 0x10000000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_KERNEL_CMDLINE        := console=ttySAC1,115200n8 androidboot.hardware=universal3475 androidboot.selinux=permissive loop.max_part=7 loglevel=4
BOARD_MKBOOTIMG_ARGS        := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_IMAGE_NAME     := zImage

BOARD_BOOTIMAGE_PARTITION_SIZE          := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 2952790016
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 805306368
BOARD_CACHEIMAGE_PARTITION_SIZE         := 104857600
BOARD_FLASH_BLOCK_SIZE                  := 4096

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE   := ext4
TARGET_USERIMAGES_USE_EXT4              := true

TARGET_SCREEN_DENSITY := 233
BOARD_USES_FULL_RECOVERY_IMAGE := true

BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_HOSTAPD_DRIVER        := NL80211
WIFI_DRIVER_MODULE_NAME     := dhd
WIFI_DRIVER_MODULE_PATH     := /vendor/lib/modules/dhd.ko
WIFI_DRIVER_FW_PATH_PARAM   := /sys/module/dhd/parameters/firmware_path
WIFI_DRIVER_FW_PATH_STA     := /vendor/etc/wifi/bcmdhd_sta.bin
WIFI_DRIVER_FW_PATH_AP      := /vendor/etc/wifi/bcmdhd_apsta.bin

USE_CAMERA_STUB        := false
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
