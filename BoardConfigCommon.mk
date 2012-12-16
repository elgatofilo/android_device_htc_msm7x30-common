# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BOARD_VENDOR := htc

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true

# FM Radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
BOARD_EGL_CFG := device/htc/msm7x30-common/configs/egl.cfg

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# RIL
BOARD_USES_LEGACY_RIL := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true
