###############################################################################
# RkExplorer
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := Rk3grExplorer
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_PRIVILEGED_MODULE :=
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_OVERRIDES_PACKAGES := 
ifneq ($(DISABLE_MODEM),true)
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
ifeq ($(TARGET_PROJECT),sofia3gr_car)
LOCAL_SRC_FILES := $(LOCAL_MODULE)_car.apk
endif
else
LOCAL_SRC_FILES := $(LOCAL_MODULE)_wifionly.apk
endif
#LOCAL_REQUIRED_MODULES :=
#LOCAL_PREBUILT_JNI_LIBS :=
include $(BUILD_PREBUILT)
