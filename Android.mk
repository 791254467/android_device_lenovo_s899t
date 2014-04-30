LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),s899t)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
