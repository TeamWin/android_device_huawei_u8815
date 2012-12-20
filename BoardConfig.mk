#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# inherit from the proprietary version
-include vendor/huawei/u8815/BoardConfigVendor.mk

#CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

# Board naming
TARGET_BOOTLOADER_BOARD_NAME := u8815
TARGET_BOARD_PLATFORM := msm7x27a

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true

# Boot/Recovery image settings 
BOARD_KERNEL_CMDLINE := console=ttyMSM1,115200
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00001000

# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/u8815/kernel

# USB mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x12C00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0AF00000
BOARD_FLASH_BLOCK_SIZE := 0x00020000

# Recovery Options
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8815/kernel
TARGET_RECOVERY_INITRC := device/huawei/u8815/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_DATADATA := true
BOARD_USES_RECOVERY_CHARGEMODE := false
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
SP1_NAME := "cust"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true

TARGET_OTA_ASSERT_DEVICE := hwu8815,u8815,hwu8818,u8818
