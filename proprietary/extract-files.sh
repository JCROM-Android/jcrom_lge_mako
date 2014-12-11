#!/bin/bash
echo "Please wait..."
wget -nc -q https://dl.google.com/dl/android/aosp/occam-lrx22c-factory-86c04af6.tgz
tar zxf occam-lrx22c-factory-86c04af6.tgz
rm occam-lrx22c-factory-86c04af6.tgz
cd occam-lrx22c
unzip image-occam-lrx22c.zip
cd ../
./simg2img occam-lrx22c/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/etc/preferred-apps
mkdir -p system/etc/sysconfig
mkdir -p system/etc/updatecmds
mkdir -p system/lib/soundfx
mkdir -p system/vendor/etc
mkdir -p system/vendor/firmware/discretix
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/lib/mediadrm
mkdir -p system/vendor/media
mkdir -p system/bin
mkdir -p system/etc
mkdir -p system/media/audio/ringtones

cp -a tmp/etc/preferred-apps/google.xml system/etc/preferred-apps/google.xml
cp -a tmp/etc/sysconfig/google.xml system/etc/sysconfig/google.xml
cp -a tmp/etc/sysconfig/google_build.xml system/etc/sysconfig/google_build.xml
cp -a tmp/etc/updatecmds/google_generic_update.txt system/etc/updatecmds/google_generic_update.txt
cp -a tmp/vendor/etc/audio_effects.conf system/vendor/etc/audio_effects.conf
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b00 system/vendor/firmware/discretix/dxhdcp2.b00
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b01 system/vendor/firmware/discretix/dxhdcp2.b01
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b02 system/vendor/firmware/discretix/dxhdcp2.b02
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b03 system/vendor/firmware/discretix/dxhdcp2.b03
cp -a tmp/vendor/firmware/discretix/dxhdcp2.mdt system/vendor/firmware/discretix/dxhdcp2.mdt
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/mediadrm/libwvdrmengine.so system/vendor/lib/mediadrm/libwvdrmengine.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libfrsdk.so system/vendor/lib/libfrsdk.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/vendor/lib/libWVphoneAPI.so system/vendor/lib/libWVphoneAPI.so
cp -a tmp/vendor/media/LMspeed_508.emd system/vendor/media/LMspeed_508.emd
cp -a tmp/vendor/media/PFFprec_600.emd system/vendor/media/PFFprec_600.emd
cp -a tmp/bin/mm-qcamera-app system/bin/mm-qcamera-app
cp -a tmp/etc/DxHDCP.cfg system/etc/DxHDCP.cfg
cp -a tmp/etc/audio_effects.conf system/etc/audio_effects.conf
cp -a tmp/lib/libDxHdcp.so system/lib/libDxHdcp.so
cp -a tmp/lib/soundfx/libfmas.so system/lib/soundfx/libfmas.so
cp -a tmp/lib/libjhead.so system/lib/libjhead.so
cp -a tmp/lib/libjhead_jni.so system/lib/libjhead_jni.so
cp -a tmp/lib/librefocus.so system/lib/librefocus.so
cp -a tmp/lib/libvcdecoder_jni.so system/lib/libvcdecoder_jni.so
cp -a tmp/lib/libvorbisencoder.so system/lib/libvorbisencoder.so
cp -a tmp/media/audio/ringtones/RobotsforEveryone.ogg system/media/audio/ringtones/RobotsforEveryone.ogg
cp -a tmp/media/audio/ringtones/SpagnolaOrchestration.ogg system/media/audio/ringtones/SpagnolaOrchestration.ogg

sudo umount tmp
rm -rf tmp
rm -rf occam-lrx22c
rm system.ext4.img
