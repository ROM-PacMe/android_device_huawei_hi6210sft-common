
#
# Copyright (C) 2016 The LineageOS Project
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

VENDOR_PATH := device/huawei/hi6210sft

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := true

# Architecture
TARGET_ARM_TYPE := arm64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

#  Platform
TARGET_BOARD_PLATFORM := hi6210sft
WITH_DEXPREOPT ?= true
USE_OPENGL_RENDERER := true
ANDROID_ENABLE_RENDERSCRIPT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BLUETOOTH_PACKAGE := com.android.bluetooth
# BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/hi6210sft/configs/bluetooth"

# RIL
BOARD_RIL_CLASS := $(VENDOR_PATH)/ril

# Kernel
ANDROID_64=true
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=permissive ate_enable=true selinux=0 androidboot.hardware=hi6210sft
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/huawei/hi6210sft
TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig
TARGET_KERNEL_PREBUILT := kernel/hi6210sft/out/arch/arm64/Image

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_HARDWARE_3D := true

# Camera
USE_CAMERA_STUB := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2550136832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5064280576
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USE_PAN_DISPLAY := true

# Root
SUPERUSER_PACKAGE := com.sys.superuser
SUPERUSER_EMBEDDED := false

#OTA
TARGET_OTA_ASSERT_DEVICE := hi6210sft,ALE-L21,alice,hwALE,CHC-U03,chm-u01,chm-u03,CHM-U03,CHC-U23,chc-u23,chc-u03

#Jack
ANDROID_COMPILE_WITH_JACK := true

# Wifi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y
WPA_SUPPLICANT_VERSION := VER_0_8_X

# enable to use the CPUSETS feature
ENABLE_CPUSETS := true

BOARD_SEPOLICY_DIRS := $(VENDOR_PATH)sepolicy

ifeq ($(HOST_OS), linux)
ifeq ($(TARGET_SYSTEMIMAGES_USE_SQUASHFS), true)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := squashfs
endif
endif
