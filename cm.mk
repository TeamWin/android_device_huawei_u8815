# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/u8815/device_u8815.mk)

# Device identifier.
PRODUCT_DEVICE := u8815
PRODUCT_NAME := cm_u8815
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Ascend G300
PRODUCT_MANUFACTURER := huawei
