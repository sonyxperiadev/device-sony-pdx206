# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/sony/pdx206/rootdir

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/pdx206/overlay

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/vendor/etc/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Bluetooth_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/General_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Global_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Handset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Hdmi_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Headset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Speaker_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/workspaceFile.qwsp \
    $(DEVICE_PATH)/vendor/etc/acdbdata/adsp_avs_config.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/adsp_avs_config.acdb

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# BT/Wifi patch file
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/bdwlan.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/bdwlan.bin

# Touch firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/touch_module_id_0x94.img:$(TARGET_COPY_OUT_VENDOR)/firmware/touch_module_id_0x94.img

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/cs35l41-dsp1-spk-cali.wmfw:$(TARGET_COPY_OUT_VENDOR)/firmware/cs35l41-dsp1-spk-cali.wmfw \
    $(DEVICE_PATH)/vendor/firmware/cs35l41-dsp1-spk-prot.wmfw:$(TARGET_COPY_OUT_VENDOR)/firmware/cs35l41-dsp1-spk-prot.wmfw \
    $(DEVICE_PATH)/vendor/firmware/L-cs35l41-dsp1-spk-cali.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/L-cs35l41-dsp1-spk-cali.bin \
    $(DEVICE_PATH)/vendor/firmware/L-cs35l41-dsp1-spk-prot.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/L-cs35l41-dsp1-spk-prot.bin \
    $(DEVICE_PATH)/vendor/firmware/R-cs35l41-dsp1-spk-cali.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/R-cs35l41-dsp1-spk-cali.bin \
    $(DEVICE_PATH)/vendor/firmware/R-cs35l41-dsp1-spk-prot.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/R-cs35l41-dsp1-spk-prot.bin

# Device-specific magnetometer and IMU orientation
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_ak991x_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_ak991x_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lsm6dsm_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lsm6dsm_0_somc_product.json

# Device Init
PRODUCT_PACKAGES += \
    fstab.pdx206 \
    ramdisk-fstab.pdx206 \
    init.recovery.pdx206 \
    init.pdx206

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# SAR
PRODUCT_PACKAGES += \
    TransPowerSensors

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420 \
    ro.usb.pid_suffix=20d

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/edo/platform.mk)

# copy NFC firmware
$(call inherit-product-if-exists, vendor/nxp/nxp-vendor.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/sony/edo-common/edo-partial.mk)
