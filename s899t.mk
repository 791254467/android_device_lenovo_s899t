#
# Copyright (C) 2013 The Unofficial CyanogenMod Project For lenovo [Percy Gahlot]
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


# Inherit the proprietary counterpart
$(call inherit-product-if-exists, vendor/lenovo/s899t/s899t-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/s899t/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Configs
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/prebuilt/config/media_codecs.xml:system/etc/media_codecs.xml \
    device/lenovo/s899t/prebuilt/config/egl.cfg:system/lib/egl/egl.cfg \
    device/lenovo/s899t/prebuilt/config/asound.conf:system/etc/asound.conf \
    device/lenovo/s899t/prebuilt/config/dbus.conf:system/etc/dbus.conf \
    device/lenovo/s899t/prebuilt/config/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/lenovo/s899t/prebuilt/system/etc/init.d/01stesetup:system/etc/init.d/01stesetup \
    device/lenovo/s899t/prebuilt/system/etc/init.d/10wireless:system/etc/init.d/10wireless \
    device/lenovo/s899t/prebuilt/system/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel \
    device/lenovo/s899t/prebuilt/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lenovo/s899t/prebuilt/config/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf

#OTA Service
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/prebuilt/system/app/OTAUpdater.apk:system/app/OTAUpdater.apk

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Hostapd
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# Netlink
PRODUCT_PACKAGES += \
    libnl_2

# Dbus
PRODUCT_PACKAGES += \
    libdbus

# lib_net_iface_cmd
PRODUCT_PACKAGES += \
    libnetcmdiface

# Glib
PRODUCT_PACKAGES += \
    libglib


# Libasound
PRODUCT_PACKAGES += \
    libasound

# Bluez
PRODUCT_PACKAGES += \
    libbtio \
    libbluetooth

# Power Module
PRODUCT_PACKAGES += \
    power.montblanc

# Bluez 5.11 daemon, android hal and haltest
PRODUCT_PACKAGES += \
    bluetoothd \
    bluetooth.default \
    audio.a2dp.default \
    haltest

# Bluez 5.11 btmon
PRODUCT_PACKAGES += \
    btmon

# Bluez 5.11 tools
PRODUCT_PACKAGES += \
    hciattach \
    hciconfig \
    hcitool \
    hcidump \
    rfcomm \
    rctest \
    l2test \
    l2ping \


# bt profile test (apk)
#PRODUCT_PACKAGES += \
#    BluetoothProfileTests

# libaudioparameter
PRODUCT_PACKAGES += \
    libaudioparameter

# light package
PRODUCT_PACKAGES += \
    lights.montblanc

# OTA app (https://github.com/percy-g2/android_packages_apps_OTA-center)
PRODUCT_PACKAGES += \
    androdevlinuxCenter

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Fmradio
#PRODUCT_PACKAGES += \
#    FmRadioReceiver

# b2r2lib
PRODUCT_PACKAGES += \
    libblt_hw

#Xperia specific wifi tethering by munjeni
PRODUCT_PACKAGES += \
    hostapdpatcher
 
# libomxil-bellagio
PRODUCT_PACKAGES += \
    libomxil-bellagio
    
# libtinyalsa & audio.usb.default
PRODUCT_PACKAGES += \
    tinyalsa \
    libtinyalsa \
    audio_policy.default \
    audio.usb.default
	
# WiFi config utility
PRODUCT_PACKAGES += \
    iw

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Custom init / uevent
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/prebuilt/root/init.rc:root/init.rc \
    device/lenovo/s899t/prebuilt/root/fstab.st-ericsson:root/fstab.st-ericsson \
    device/lenovo/s899t/prebuilt/root/init.st-ericsson.rc:root/init.st-ericsson.rc \
    device/lenovo/s899t/prebuilt/root/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc \
    device/lenovo/s899t/prebuilt/root/init.environ.rc:root/init.environ.rc

# Recovery bootstrap script
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/recovery/bootrec:root/sbin/bootrec \
    device/lenovo/s899t/recovery/usbid_init.sh:root/sbin/usbid_init.sh \
    device/lenovo/s899t/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh


# HW Configs
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/prebuilt/config/ril_config:system/etc/ril_config \
    device/lenovo/s899t/prebuilt/config/install_wlan:system/bin/install_wlan \
    device/lenovo/s899t/prebuilt/config/ste_modem.sh:system/etc/ste_modem.sh \
    device/lenovo/s899t/prebuilt/config/omxloaders:system/omxloaders

# GPS
PRODUCT_COPY_FILES += \
    device/lenovo/s899t/prebuilt/config/gps.conf:system/etc/gps.conf\
    device/lenovo/s899t/prebuilt/config/cacert.txt:system/etc/suplcert/cacert.txt

#PRODUCT_PROPERTY_OVERRIDES += \
#sys.mem.max_hidden_apps=10

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    wifi.interface=wlan0

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# This device is mdpi.  However the platform doesn't
# currently contain all of the bitmaps at mdpi density so
# we do this little trick to fall back to the mdpi version
# if the mdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.device.rc:root/init.st-ericsson.device.rc \
   device/lenovo/s899t/prebuilt/logo-540x960.rle:root/logo.rle

# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/config/dash.conf:system/etc/dash.conf \
   $(LOCAL_PATH)/prebuilt/hw_config.sh:system/etc/hw_config.sh

# fake script needed for recovery
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/modelid_cfg.sh:system/bin/modelid_cfg.sh


# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/config/media_profiles.xml:system/etc/media_profiles.xml

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/config/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl \
   $(LOCAL_PATH)/prebuilt/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
   $(LOCAL_PATH)/prebuilt/config/so34-buttons.kl:system/usr/keylayout/so34-buttons.kl \
   $(LOCAL_PATH)/prebuilt/config/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
   $(LOCAL_PATH)/prebuilt/config/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
   $(LOCAL_PATH)/prebuilt/config/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl \
   $(LOCAL_PATH)/prebuilt/config/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl \
   $(LOCAL_PATH)/prebuilt/config/sensor00_f11_sensor0.idc:system/usr/idc/sensor00_f11_sensor0.idc \
   $(LOCAL_PATH)/prebuilt/config/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc

# Misc configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/config/cflashlib.cfg:system/etc/cflashlib.cfg \
   $(LOCAL_PATH)/prebuilt/config/flashled_param_config.cfg:system/etc/flashled_param_config.cfg
   
# Barometar permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml
   
   
# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# New wifi firmwares (Thanks munjeni and 95A31)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/firmware/sdd_sagrad_1091_1098.bin:system/etc/firmware/sdd_sagrad_1091_1098.bin \
    $(LOCAL_PATH)/prebuilt/system/etc/firmware/wsm_22.bin:system/etc/firmware/wsm_22.bin \
    $(LOCAL_PATH)/prebuilt/system/etc/firmware/LICENCE.cw1200:system/etc/firmware/LICENCE.cw1200

# Device specific sysmon_monitor conf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/sysmon.cfg:system/etc/sysmon.cfg
 
# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/prebuilt/config/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/prebuilt/config/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# patched JB cn_binary needed for mobile network for CM10.2 only
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/cn_server:system/bin/cn_server

# Copy the Bluetooth permissions file. The permissions file also enables Bluetooth menu in Settings?
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/lenovo/s899t/s899t-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.com.google.clientidbase.ms=android-sonymobile

#Goo Manager support
#PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=percy215 \
    ro.goo.board=$(subst full_,,$(TARGET_PRODUCT)) \
    ro.goo.rom=Legacy-Xperia_cm \
    ro.goo.version=2
    
#OTA Updater App
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=88999 \
    otaupdater.otaver=4 \
    otaupdater.otatime=$(shell date +%s)
