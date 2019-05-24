# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_k3gxx,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XXHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/k3gxx/full_k3gxx.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/products/k3gxx/pa_k3gxx.mk


# Override AOSP build properties
PRODUCT_NAME := pa_k3gxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G900H
PRODUCT_MANUFACTURER := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-G900H \
    PRODUCT_NAME=k3gxx \
    PRODUCT_DEVICE=k3gxx \
    TARGET_DEVICE=k3gxx \
    BUILD_FINGERPRINT="samsung/k3gxx/k3g:6.0.1/MMB29K/G900HXXU1CPF2:user/release-keys" \
    PRIVATE_BUILD_DESC="k3gxx-user 6.0.1 MMB29K G900HXXU1CPF2 release-keys"

endif

