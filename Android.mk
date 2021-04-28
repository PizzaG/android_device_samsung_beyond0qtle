LOCAL_PATH := $(call my-dir)

ifneq ($(filter beyond0qlte beyond0qltesq, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
