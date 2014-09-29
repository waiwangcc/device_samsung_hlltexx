## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := hlltexx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hlltexx/device_hlltexx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hlltexx
PRODUCT_NAME := cm_hlltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := hlltexx
PRODUCT_MANUFACTURER := samsung
