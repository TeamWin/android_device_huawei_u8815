# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common language setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit u8815 vendor setup
$(call inherit-product-if-exists, vendor/huawei/u8815/u8815-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/huawei/u8815/overlay

# Files needed for recovery image
PRODUCT_COPY_FILES += \
  device/huawei/u8815/recovery/sbin/charge:/root/sbin/charge \
  device/huawei/u8815/recovery/sbin/rmt_storage:/root/sbin/rmt_storage \
  device/huawei/u8815/recovery/sbin/postrecoveryboot.sh:/root/sbin/postrecoveryboot.sh

# Device Naming
PRODUCT_NAME := full_u8815
PRODUCT_DEVICE := u8815
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Huawei Ascend G300
