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

include device/sony/edo/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := XQ-AS52

# Platform
PRODUCT_PLATFORM := edo

# Kernel cmdline
BOARD_KERNEL_CMDLINE += androidboot.hardware=pdx206
BOARD_KERNEL_CMDLINE += androidboot.fstab_suffix=pdx206

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

BOARD_ODMIMAGE_PARTITION_SIZE := 419430400

BOARD_SUPER_PARTITION_SIZE := 12348030976 # (0x2E0000000)
BOARD_SUPER_PARTITION_GROUPS := sod_dynamic_partitions

# Set error limit to SUPER_PARTITION_SIZE - 500MiB
BOARD_SUPER_PARTITION_ERROR_LIMIT := 11823742976

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_SOD_DYNAMIC_PARTITIONS_SIZE := 6169821184
BOARD_SOD_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product

# Slightly overprovision dynamic partitions with 50MiB to
# allow on-device file editing
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 52428800
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 52428800
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 52428800

# Reserve space for data encryption (109553123000-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 109553106616

