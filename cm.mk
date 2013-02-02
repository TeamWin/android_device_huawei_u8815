## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8815/device_u8815.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_u8815
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8815
PRODUCT_MODEL := Ascend G300
PRODUCT_MANUFACTURER := huawei

# Release name and versioning
PRODUCT_RELEASE_NAME := U8815

