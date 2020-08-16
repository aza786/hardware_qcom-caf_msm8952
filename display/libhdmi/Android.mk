LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libhdmi
LOCAL_VENDOR_MODULE           := true
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes)
LOCAL_SHARED_LIBRARIES        := $(common_libs) liboverlay libqdutils
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdhdmi\" -Wno-float-conversion
LOCAL_CFLAGS                  += -Wno-error
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES               := hdmi.cpp

include $(BUILD_SHARED_LIBRARY)