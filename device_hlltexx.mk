$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/hlltexx/hlltexx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/hlltexx/overlay

LOCAL_PATH := device/samsung/hlltexx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	device/samsung/hlltexx/init.universal5260.rc:root/init.universal5260.rc \
        device/samsung/hlltexx/init.universal5260.usb.rc:root/init.universal5260.usb.rc \
	device/samsung/hlltexx/ueventd.universal5260.rc:root/ueventd.universal5260.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hlltexx
PRODUCT_DEVICE := hlltexx
