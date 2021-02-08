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

# Sensors Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_ak991x_0_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_ak991x_0_somc_platform.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_ak991x_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_ak991x_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_bmp380_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_bmp380_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_bu52053nvx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_bu52053nvx_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_default_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_dynamic_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_dynamic_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_hdk_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_hdk_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_hdk_lsm6dst_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_hdk_lsm6dst_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_hdk_lsm6dst_1.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_hdk_lsm6dst_1.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_irq.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_irq.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lps22hh_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lps22hh_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lsm6dsm_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lsm6dsm_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lsm6dsm_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lsm6dsm_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lsm6dst_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lsm6dst_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_lsm6dst_1.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_lsm6dst_1.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_power_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_power_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_qrd_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_qrd_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_qrd_lsm6dst_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_qrd_lsm6dst_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_qrd_sx932x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_qrd_sx932x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_qrd_tmd2725_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_qrd_tmd2725_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_shtw2_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_shtw2_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_somc_default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_somc_default_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_stk3x3x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_stk3x3x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_svr_bma4_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_svr_bma4_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_svr_bmg160_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_svr_bmg160_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_svr_icm4x6xx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_svr_icm4x6xx_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_svr_rpr0521rs_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_svr_rpr0521rs_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_sx932x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_sx932x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kona_tmd2725_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kona_tmd2725_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_device_orient_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_device_orient_somc_platform.json

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
    $(DEVICE_PATH)/vendor/firmware/wlan/qca_cld/bdwlan.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/qca_cld/bdwlan.bin

# Touch firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/touch_module_id_0x94.img:$(TARGET_COPY_OUT_VENDOR)/firmware/touch_module_id_0x94.img

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

# Generic Sensors Configuration
PRODUCT_PACKAGES += \
    sns_distance_bound.json \
    sns_mag_cal_legacy.json \
    sns_rotv.json \
    sns_aont.json \
    sns_dae.json \
    sns_amd_sw_enabled.json \
    sns_pedometer.json \
    sns_mag_cal.json \
    sns_basic_gestures.json \
    sns_cm.json \
    sns_multishake.json \
    sns_rmd.json \
    sns_ccd_v2_walk.json \
    sns_amd_sw_disabled.json \
    sns_tilt.json \
    sns_tilt_sw_disabled.json \
    sns_ccd.json \
    sns_bring_to_ear.json \
    sns_diag_filter.json \
    sns_amd.json \
    sns_tilt_to_wake.json \
    sns_gyro_cal.json \
    sns_tilt_sw_enabled.json \
    sns_dpc.json \
    sns_smd.json \
    sns_geomag_rv.json \
    sns_facing.json \
    lsm6dsm_0.json \
    stk3x3x_0.json \
    sns_fmv.json \
    sns_device_orient.json

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
