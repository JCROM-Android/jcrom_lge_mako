LOCAL_PATH := jcrom/lge/mako

PRODUCT_PROPERTY_OVERRIDES += persist.sys.voice.capable=true
PRODUCT_PROPERTY_OVERRIDES += persist.sys.sms.capable=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ui.phone=320 \
    persist.sys.ui.tablet=192 \
    persist.sys.ui.phablet=268

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/proprietary/system/vendor/firmware/discretix/dxhdcp2.b00:system/vendor/firmware/discretix/dxhdcp2.b00 \
	$(LOCAL_PATH)/proprietary/system/vendor/firmware/discretix/dxhdcp2.b01:system/vendor/firmware/discretix/dxhdcp2.b01 \
	$(LOCAL_PATH)/proprietary/system/vendor/firmware/discretix/dxhdcp2.b02:system/vendor/firmware/discretix/dxhdcp2.b02 \
	$(LOCAL_PATH)/proprietary/system/vendor/firmware/discretix/dxhdcp2.b03:system/vendor/firmware/discretix/dxhdcp2.b03 \
	$(LOCAL_PATH)/proprietary/system/vendor/firmware/discretix/dxhdcp2.mdt:system/vendor/firmware/discretix/dxhdcp2.mdt \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libfrsdk.so:system/vendor/lib/libfrsdk.so \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
	$(LOCAL_PATH)/proprietary/system/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
	$(LOCAL_PATH)/proprietary/system/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd \
	$(LOCAL_PATH)/proprietary/system/bin/mm-qcamera-app:system/bin/mm-qcamera-app \
	$(LOCAL_PATH)/proprietary/system/etc/DxHDCP.cfg:system/etc/DxHDCP.cfg \
	$(LOCAL_PATH)/proprietary/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/proprietary/system/lib/libDxHdcp.so:system/lib/libDxHdcp.so \
	$(LOCAL_PATH)/proprietary/system/lib/soundfx/libfmas.so:system/lib/soundfx/libfmas.so \
	$(LOCAL_PATH)/proprietary/system/lib/libgcastv2_base.so:system/lib/libgcastv2_base.so \
	$(LOCAL_PATH)/proprietary/system/lib/libgcastv2_support.so:system/lib/libgcastv2_support.so \
	$(LOCAL_PATH)/proprietary/system/lib/libjgcastservice.so:system/lib/libjgcastservice.so \
	$(LOCAL_PATH)/proprietary/system/lib/libjhead.so:system/lib/libjhead.so \
	$(LOCAL_PATH)/proprietary/system/lib/libjhead_jni.so:system/lib/libjhead_jni.so \
	$(LOCAL_PATH)/proprietary/system/media/audio/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg \
	$(LOCAL_PATH)/proprietary/system/media/audio/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg

$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage10.mk)
