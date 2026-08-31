LOCAL_PATH := $(call my-dir)

$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    ro.lmk.use_minfree_levels=true \
    ro.lmk.swap_util_max=100 \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.dex2oat-filter=speed-profile \
    pm.dexopt.boot=verify \
    pm.dexopt.first-boot=quicken \
    pm.dexopt.install=speed-profile

PRODUCT_PROPERTY_OVERRIDES += \
    ro.board.platform=exynos3475 \
    ro.hardware=universal3475 \
    ro.chipname=universal3475 \
    ro.sf.lcd_density=233 \
    persist.sys.displayinset.top=0 \
    ro.opengles.version=131072 \
    debug.sf.hw=1 \
    debug.egl.hw=1

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    net.tethering.accept_all_interfaces=1 \
    ro.camera.notify_nfc=1 \
    camera.disable_zsl_mode=1 \
    ro.hardware.camera=universal3475 \
    ro.vendor.build.security_patch=2022-01-01 \
    ro.treble.enabled=false
