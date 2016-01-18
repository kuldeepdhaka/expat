LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

REL_PATH:= ../..
ABS_PATH:= $(LOCAL_PATH)/$(REL_PATH)

LOCAL_SRC_FILES := \
	$(ABS_PATH)/lib/xmlparse.c	\
	$(ABS_PATH)/lib/xmlrole.c	\
	$(ABS_PATH)/lib/xmltok.c	\
	$(ABS_PATH)/lib/xmltok_impl.c	\
	$(ABS_PATH)/lib/xmltok_ns.c

LOCAL_C_INCLUDES := \
	$(ABS_PATH)/lib \
	$(LOCAL_PATH)/../include

LOCAL_EXPORT_C_INCLUDES := \
	$(ABS_PATH)/lib	\
	$(LOCAL_PATH)/../include

LOCAL_MODULE:= expat
LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Wmissing-prototypes -Wstrict-prototypes
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-missing-field-initializers
LOCAL_CFLAGS += -fexceptions
LOCAL_CFLAGS += -DHAVE_EXPAT_CONFIG_H

include $(BUILD_SHARED_LIBRARY)
