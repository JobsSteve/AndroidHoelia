LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_net

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES := SDLnet.c \
				   SDLnetselect.c \
				   SDLnetTCP.c \
				   SDLnetUDP.c \
				   showinterfaces.c

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_EXPORT_C_INCLUDES += $(LOCAL_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
