LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	iozone.c \
	libbif.c

LOCAL_CFLAGS += \
	-O3 -Dunix -DHAVE_ANSIC_C -DHAVE_PREAD -DANDROID -DO_RSYNC=0 -DNO_THREADS \
	-DNAME='"linux-arm"' -DLINUX_ARM -Dlinux -D__Android__

LOCAL_C_INCLUDES := $(KERNEL_HEADERS)

LOCAL_LDFLAGS := -Wl,--no-fatal-warnings
LOCAL_SHARED_LIBRARIES := libc
#LOCAL_LDLIBS += -lpthread
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= iozone

include $(BUILD_EXECUTABLE)
