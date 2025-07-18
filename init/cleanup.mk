include $(CLEAR_VARS)
LOCAL_MODULE := cleanup_recovery_vendor_dir
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_PATH := $(TARGET_OUT)
LOCAL_PREBUILT_MODULE_FILE := /dev/null
LOCAL_MODULE_TAGS := optional
LOCAL_POST_INSTALL_CMD := echo "Cleaning up vendor symlinks..." && rm -rf $(PRODUCT_OUT)/root/vendor && rm -rf $(PRODUCT_OUT)/recovery/root/vendor
include $(BUILD_PREBUILT)
