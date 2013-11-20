#!/bin/bash
echo "Download and Deodexing... Please wait."
wget -nc -q https://dl.google.com/dl/android/aosp/occam-krt16s-factory-2006f418.tgz
tar zxf occam-krt16s-factory-2006f418.tgz
cd occam-krt16s
unzip image-occam-krt16s.zip
cd ../
./simg2img occam-krt16s/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/lib/soundfx
mkdir -p system/vendor/etc
mkdir -p system/vendor/firmware/discretix
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/lib/mediadrm
mkdir -p system/vendor/media
mkdir -p system/bin
mkdir -p system/etc
mkdir -p system/media/audio/ringtones

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
cp -a tmp/vendor/media/LMspeed_508.emd system/vendor/media/LMspeed_508.emd
cp -a tmp/vendor/media/PFFprec_600.emd system/vendor/media/PFFprec_600.emd
cp -a tmp/bin/mm-qcamera-app system/bin/mm-qcamera-app
cp -a tmp/etc/DxHDCP.cfg system/etc/DxHDCP.cfg
cp -a tmp/etc/audio_effects.conf system/etc/audio_effects.conf
cp -a tmp/lib/libDxHdcp.so system/lib/libDxHdcp.so
cp -a tmp/lib/soundfx/libfmas.so system/lib/soundfx/libfmas.so
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip
cp -a tmp/media/audio/ringtones/RobotsforEveryone.ogg system/media/audio/ringtones/RobotsforEveryone.ogg
cp -a tmp/media/audio/ringtones/SpagnolaOrchestration.ogg system/media/audio/ringtones/SpagnolaOrchestration.ogg

sudo umount tmp
rm -rf tmp
rm -rf occam-krt16s
rm system.ext4.img

