#
# Copyright (C) 2011 The CyanogenMod Project
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
-include device/semc/msm7x30-common/msm7x30.mk

DEVICE_PACKAGE_OVERLAYS += device/semc/zeus-common/overlay

PRODUCT_PACKAGES += \
    hostapd

#device specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/zeus-common/prebuilt/init.semc.rc:root/init.semc.rc

#    device/semc/msm7x30-common/prebuilt/filler:root/filler2

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    com.qc.hdmi_out=false
