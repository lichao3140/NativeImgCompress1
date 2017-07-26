LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    :=jpegbither
LOCAL_SRC_FILES :=libjpegbither.so
include $(PREBUILT_SHARED_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE    :=bitherjni
LOCAL_SRC_FILES :=bitherlibjni.cpp
LOCAL_SHARED_LIBRARIES :=jpegbither
LOCAL_LDLIBS := -ljnigraphics -llog  
include $(BUILD_SHARED_LIBRARY)