# Copyright (C) 2013 The CyanogenMod Project
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

DEVICE_FOLDER := device/lenovo/A656

-include vendor/lenovo/A656/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := mt6589
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6589

# blob hacks
#COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS -DANDROID_P2P -DANDROID_P2P_STUB
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_ENABLE_NON_PIE_SUPPORT := true

# HW Composer
BOARD_NEEDS_OLD_HWC_API := true
COMMON_GLOBAL_CFLAGS += -DMTK_G_MT6589
COMMON_GLOBAL_CPPFLAGS += -DMTK_G_MT6589
BOARD_HAS_MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/A656/bluetooth

# power
TARGET_POWERHAL_VARIANT := cm

# boot
TARGET_NO_BOOTLOADER := true

# EGL settings
BOARD_EGL_CFG := device/lenovo/A656/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 1073741824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# recovery
#TARGET_NO_RECOVERY := true
#TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab
#TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
#RECOVERY_VARIANT=twrp

RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

#TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
#TW_INCLUDE_CRYPTO := false
#TW_INCLUDE_FB2PNG := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true

#TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_USE_BRAND_DEVICE_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/battery/power_supply/battery
TW_BACKUPS_FOLDER := /sdcard/TWRP/BACKUPS/Lenovo_A656_MT6589

#TW_EXCLUDE_SUPERSU := true
#TW_NO_EXFAT := true
#TW_NO_EXFAT_FUSE := true
#BOARD_HAS_NO_REAL_SDCARD := true

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

#TW_THEME := portrait_hdpi
TW_CUSTOM_THEME := $(DEVICE_FOLDER)/recovery/theme

#TWHAVE_SELINUX := true

TW_INCLUDE_NTFS_3G := true


# mkimage to append headers
TARGET_MKIMAGE := device/lenovo/A656/mkimage
TARGET_USE_BUILT_BOOTIMAGE := true

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := mediatek
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# telephony
BOARD_RIL_CLASS := ../../../device/lenovo/A656/ril/

#nvram permission fix
TARGET_SPECIFIC_HEADER_PATH := device/lenovo/A656/include

# allow more than one lun file
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

#SEPolicy
BOARD_SEPOLICY_DIRS += \
    device/lenovo/A656/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    netd.te
