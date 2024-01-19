#
# Copyright (C) 2023 PixelBlaster-OS
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
#

# ConnectivityThermalPowermanager
include hardware/google/pixel/connectivity_thermal_power_manager/connectivity_thermal_power_manager.mk

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Overlays
PRODUCT_PACKAGES += \
    NetworkStackOverlay

# Telephony
PRODUCT_PACKAGES += \
    TelephonyOverlayGS201

# Wireless Charger
include device/google/gs-common/wireless_charger/wireless_charger.mk
