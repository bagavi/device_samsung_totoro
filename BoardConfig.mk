

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Board
TARGET_BOARD_PLATFORM := bcm21553
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

TARGET_BOOTLOADER_BOARD_NAME := totoro

TARGET_OTA_ASSERT_DEVICE := totoro,GT-S5360

HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true

# Camera
USE_CAMERA_STUB := true

BOARD_V4L2_DEVICE := /dev/video2
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_USE_JPEG := true
#BOARD_USE_CAF_LIBCAMERA_GB_REL := true

DEFAULT_FB_NUM := 0

# 2d/3d
#TARGET_BOARD_PLATFORM_GPU := hgl
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_EGL_CFG := device/samsung/totoro/egl.cfg
#BOARD_USES_COPYBIT := true
#BOARD_NO_RGBX_8888 := true
#BOARD_USE_SCREENCAP := true
#TARGET_DO_NOT_SETS_CAN_DRAW := true
#BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
#BOARD_USES_HW_RENDER := true


# 3d/3d
TARGET_BOARD_PLATFORM_GPU := hgl
BOARD_EGL_CFG := device/samsung/totoro/egl.cfg
#USE_OPENGL_RENDERER := true
BOARD_USES_HW_RENDER := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true


BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Misc
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true

TARGET_NO_BOOTLOADER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true
BRCM_BTL_INCLUDE_OBEX:=true
BRCM_BTL_OBEX_USE_DBUS:=true
TARGET_PREBUILT_BT := y
BT_CHIP:=4330B1_26M

# usb
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/lm-2/gadget/lun0/file"


BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x81600000	 
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/totoro/kernel	
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/totoro/recovery_kernel
TARGET_RECOVERY_INITRC := device/samsung/totoro/recovery.rc

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE 	    := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

