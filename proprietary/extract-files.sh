#!/bin/bash
echo wait a few minutes.
tar zxf occam-jop40c-factory-cd3dc140.tgz
cd occam-jop40c
unzip image-occam-jop40c.zip
cd ../
./simg2img occam-jop40c/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/lib/egl
mkdir -p system/lib/hw
mkdir -p system/etc/firmware/wcd9310
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/firmware/discretix
mkdir -p system/bin
mkdir -p system/media/video
cp -a tmp/lib/libchromatix_vx6953_preview.so system/lib/libchromatix_vx6953_preview.so
cp -a tmp/lib/libchromatix_ov5647_preview.so system/lib/libchromatix_ov5647_preview.so
cp -a tmp/lib/libqmi_csi.so system/lib/libqmi_csi.so
cp -a tmp/lib/libOmxAacDec.so system/lib/libOmxAacDec.so
cp -a tmp/lib/libllvm-a3xx.so system/lib/libllvm-a3xx.so
cp -a tmp/lib/libOpenVG.so system/lib/libOpenVG.so
cp -a tmp/lib/libchromatix_mt9e013_preview.so system/lib/libchromatix_mt9e013_preview.so
cp -a tmp/lib/libqmi_client_qmux.so system/lib/libqmi_client_qmux.so
cp -a tmp/lib/libdss.so system/lib/libdss.so
cp -a tmp/lib/libmmipl.so system/lib/libmmipl.so
cp -a tmp/lib/libacdbloader.so system/lib/libacdbloader.so
cp -a tmp/lib/libchromatix_ov5647_default_video.so system/lib/libchromatix_ov5647_default_video.so
cp -a tmp/lib/libsensor_user_cal.so system/lib/libsensor_user_cal.so
cp -a tmp/lib/lib_dlb_msd.so system/lib/lib_dlb_msd.so
cp -a tmp/lib/libmmstillomx.so system/lib/libmmstillomx.so
cp -a tmp/lib/libchromatix_imx111_default_video.so system/lib/libchromatix_imx111_default_video.so
cp -a tmp/lib/libloc_api_v02.so system/lib/libloc_api_v02.so
cp -a tmp/lib/libalsautils.so system/lib/libalsautils.so
cp -a tmp/lib/liboemcamera.so system/lib/liboemcamera.so
cp -a tmp/lib/libaudioalsa.so system/lib/libaudioalsa.so
cp -a tmp/lib/egl/libEGL_adreno200.so system/lib/egl/libEGL_adreno200.so
cp -a tmp/lib/egl/eglsubAndroid.so system/lib/egl/eglsubAndroid.so
cp -a tmp/lib/egl/libGLESv1_CM_adreno200.so system/lib/egl/libGLESv1_CM_adreno200.so
cp -a tmp/lib/egl/libGLESv2_adreno200.so system/lib/egl/libGLESv2_adreno200.so
cp -a tmp/lib/egl/libGLESv2S3D_adreno200.so system/lib/egl/libGLESv2S3D_adreno200.so
cp -a tmp/lib/egl/libplayback_adreno200.so system/lib/egl/libplayback_adreno200.so
cp -a tmp/lib/egl/libq3dtools_adreno200.so system/lib/egl/libq3dtools_adreno200.so
cp -a tmp/lib/libxml.so system/lib/libxml.so
cp -a tmp/lib/libimage-jpeg-enc-omx-comp.so system/lib/libimage-jpeg-enc-omx-comp.so
cp -a tmp/lib/libdrmtime.so system/lib/libdrmtime.so
cp -a tmp/lib/libmercury.so system/lib/libmercury.so
cp -a tmp/lib/libchromatix_ov8825_default_video.so system/lib/libchromatix_ov8825_default_video.so
cp -a tmp/lib/libdiag.so system/lib/libdiag.so
cp -a tmp/lib/libqcci_legacy.so system/lib/libqcci_legacy.so
cp -a tmp/lib/libgsl.so system/lib/libgsl.so
cp -a tmp/lib/libdsutils.so system/lib/libdsutils.so
cp -a tmp/lib/libmmjps.so system/lib/libmmjps.so
cp -a tmp/lib/libc2d2_z180.so system/lib/libc2d2_z180.so
cp -a tmp/lib/libDxHdcp.so system/lib/libDxHdcp.so
cp -a tmp/lib/libaudcal.so system/lib/libaudcal.so
cp -a tmp/lib/libqmi_csvt_srvc.so system/lib/libqmi_csvt_srvc.so
cp -a tmp/lib/libchromatix_ov5647_video_hfr.so system/lib/libchromatix_ov5647_video_hfr.so
cp -a tmp/lib/libqmi_encdec.so system/lib/libqmi_encdec.so
cp -a tmp/lib/libsensor1.so system/lib/libsensor1.so
cp -a tmp/lib/libchromatix_s5k4e1_default_video.so system/lib/libchromatix_s5k4e1_default_video.so
cp -a tmp/lib/libsensor_test.so system/lib/libsensor_test.so
cp -a tmp/lib/libmmcamera_hdr_lib.so system/lib/libmmcamera_hdr_lib.so
cp -a tmp/lib/libril-qc-qmi-1.so system/lib/libril-qc-qmi-1.so
cp -a tmp/lib/libqmiservices.so system/lib/libqmiservices.so
cp -a tmp/lib/libC2D2.so system/lib/libC2D2.so
cp -a tmp/lib/hw/sensors.msm8960.so system/lib/hw/sensors.msm8960.so
cp -a tmp/lib/libchromatix_imx111_zsl.so system/lib/libchromatix_imx111_zsl.so
cp -a tmp/lib/libqmi_common_so.so system/lib/libqmi_common_so.so
cp -a tmp/lib/libmmcamera_wavelet_lib.so system/lib/libmmcamera_wavelet_lib.so
cp -a tmp/lib/libsensor_reg.so system/lib/libsensor_reg.so
cp -a tmp/lib/libOpenCL.so system/lib/libOpenCL.so
cp -a tmp/lib/libdrmdiag.so system/lib/libdrmdiag.so
cp -a tmp/lib/libchromatix_ov9726_preview.so system/lib/libchromatix_ov9726_preview.so
cp -a tmp/lib/libQSEEComAPI.so system/lib/libQSEEComAPI.so
cp -a tmp/lib/libllvm-arm.so system/lib/libllvm-arm.so
cp -a tmp/lib/libsc-a3xx.so system/lib/libsc-a3xx.so
cp -a tmp/lib/libmm-color-convertor.so system/lib/libmm-color-convertor.so
cp -a tmp/lib/libI420colorconvert.so system/lib/libI420colorconvert.so
cp -a tmp/lib/libmmcamera_frameproc.so system/lib/libmmcamera_frameproc.so
cp -a tmp/lib/libmmmpo.so system/lib/libmmmpo.so
cp -a tmp/lib/libmmcamera_statsproc31.so system/lib/libmmcamera_statsproc31.so
cp -a tmp/lib/libdsprofile.so system/lib/libdsprofile.so
cp -a tmp/lib/libchromatix_s5k4e1_preview.so system/lib/libchromatix_s5k4e1_preview.so
cp -a tmp/lib/libdsucsd.so system/lib/libdsucsd.so
cp -a tmp/lib/libCommandSvc.so system/lib/libCommandSvc.so
cp -a tmp/lib/libstagefright_hdcp.so system/lib/libstagefright_hdcp.so
cp -a tmp/lib/libAKM.so system/lib/libAKM.so
cp -a tmp/lib/libchromatix_ov8825_preview.so system/lib/libchromatix_ov8825_preview.so
cp -a tmp/lib/libchromatix_imx111_preview.so system/lib/libchromatix_imx111_preview.so
cp -a tmp/lib/libconfigdb.so system/lib/libconfigdb.so
cp -a tmp/lib/libidl.so system/lib/libidl.so
cp -a tmp/lib/libchromatix_ov9726_default_video.so system/lib/libchromatix_ov9726_default_video.so
cp -a tmp/lib/libsc-a2xx.so system/lib/libsc-a2xx.so
cp -a tmp/lib/libmmcamera_image_stab.so system/lib/libmmcamera_image_stab.so
cp -a tmp/lib/libaudioparsers.so system/lib/libaudioparsers.so
cp -a tmp/lib/libc2d2_a3xx.so system/lib/libc2d2_a3xx.so
cp -a tmp/lib/libchromatix_mt9e013_video_hfr.so system/lib/libchromatix_mt9e013_video_hfr.so
cp -a tmp/lib/libOmxWmaDec.so system/lib/libOmxWmaDec.so
cp -a tmp/lib/libchromatix_imx119_preview.so system/lib/libchromatix_imx119_preview.so
cp -a tmp/lib/libimage-jpeg-dec-omx-comp.so system/lib/libimage-jpeg-dec-omx-comp.so
cp -a tmp/lib/libchromatix_imx119_default_video.so system/lib/libchromatix_imx119_default_video.so
cp -a tmp/lib/libgemini.so system/lib/libgemini.so
cp -a tmp/lib/libqdp.so system/lib/libqdp.so
cp -a tmp/lib/libqdi.so system/lib/libqdi.so
cp -a tmp/lib/libmmmpod.so system/lib/libmmmpod.so
cp -a tmp/lib/libchromatix_mt9e013_default_video.so system/lib/libchromatix_mt9e013_default_video.so
cp -a tmp/lib/libchromatix_vx6953_default_video.so system/lib/libchromatix_vx6953_default_video.so
cp -a tmp/lib/libqmi.so system/lib/libqmi.so
cp -a tmp/lib/libmorpho_noise_reduction.so system/lib/libmorpho_noise_reduction.so
cp -a tmp/lib/libcsd-client.so system/lib/libcsd-client.so
cp -a tmp/lib/libmmjpeg.so system/lib/libmmjpeg.so
cp -a tmp/lib/libqmi_cci.so system/lib/libqmi_cci.so
cp -a tmp/lib/libdsi_netctrl.so system/lib/libdsi_netctrl.so
cp -a tmp/lib/libnetmgr.so system/lib/libnetmgr.so
cp -a tmp/lib/libril-qcril-hook-oem.so system/lib/libril-qcril-hook-oem.so
cp -a tmp/lib/libmmcamera_faceproc.so system/lib/libmmcamera_faceproc.so
cp -a tmp/lib/libimage-omx-common.so system/lib/libimage-omx-common.so
cp -a tmp/lib/libdrmfs.so system/lib/libdrmfs.so
cp -a tmp/lib/libcamera_fast_af.so system/lib/libcamera_fast_af.so
cp -a tmp/etc/diag.cfg system/etc/diag.cfg
cp -a tmp/etc/DxHDCP.cfg system/etc/DxHDCP.cfg
cp -a tmp/etc/firmware/wcd9310/wcd9310_anc.bin system/etc/firmware/wcd9310/wcd9310_anc.bin
cp -a tmp/etc/firmware/wcd9310/wcd9310_mbhc.bin system/etc/firmware/wcd9310/wcd9310_mbhc.bin
cp -a tmp/etc/firmware/a300_pm4.fw system/etc/firmware/a300_pm4.fw
cp -a tmp/etc/firmware/a225p5_pm4.fw system/etc/firmware/a225p5_pm4.fw
cp -a tmp/etc/firmware/leia_pm4_470.fw system/etc/firmware/leia_pm4_470.fw
cp -a tmp/etc/firmware/vidc.b00 system/etc/firmware/vidc.b00
cp -a tmp/etc/firmware/a225_pfp.fw system/etc/firmware/a225_pfp.fw
cp -a tmp/etc/firmware/vidc.mdt system/etc/firmware/vidc.mdt
cp -a tmp/etc/firmware/vidc.b01 system/etc/firmware/vidc.b01
cp -a tmp/etc/firmware/a225_pm4.fw system/etc/firmware/a225_pm4.fw
cp -a tmp/etc/firmware/vidc_1080p.fw system/etc/firmware/vidc_1080p.fw
cp -a tmp/etc/firmware/vidc.b03 system/etc/firmware/vidc.b03
cp -a tmp/etc/firmware/vidcfw.elf system/etc/firmware/vidcfw.elf
cp -a tmp/etc/firmware/vidc.b02 system/etc/firmware/vidc.b02
cp -a tmp/etc/firmware/leia_pfp_470.fw system/etc/firmware/leia_pfp_470.fw
cp -a tmp/etc/firmware/a300_pfp.fw system/etc/firmware/a300_pfp.fw
cp -a tmp/vendor/lib/libdrmdecrypt.so system/vendor/lib/libdrmdecrypt.so
cp -a tmp/vendor/firmware/bcm2079x_firmware.ncd system/vendor/firmware/bcm2079x_firmware.ncd
cp -a tmp/vendor/firmware/bcm2079x_pre_firmware.ncd system/vendor/firmware/bcm2079x_pre_firmware.ncd
cp -a tmp/vendor/firmware/discretix/dxhdcp2.mdt system/vendor/firmware/discretix/dxhdcp2.mdt
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b01 system/vendor/firmware/discretix/dxhdcp2.b01
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b03 system/vendor/firmware/discretix/dxhdcp2.b03
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b00 system/vendor/firmware/discretix/dxhdcp2.b00
cp -a tmp/vendor/firmware/discretix/dxhdcp2.b02 system/vendor/firmware/discretix/dxhdcp2.b02
cp -a tmp/bin/btnvtool system/bin/btnvtool
cp -a tmp/bin/radish system/bin/radish
cp -a tmp/bin/test_diag system/bin/test_diag
cp -a tmp/bin/sns_cm_conc_test system/bin/sns_cm_conc_test
cp -a tmp/bin/qcks system/bin/qcks
cp -a tmp/bin/efsks system/bin/efsks
cp -a tmp/bin/sns_debug_file_test system/bin/sns_debug_file_test
cp -a tmp/bin/bridgemgrd system/bin/bridgemgrd
cp -a tmp/bin/ATFWD-daemon system/bin/ATFWD-daemon
cp -a tmp/bin/nl_listener system/bin/nl_listener
cp -a tmp/bin/v4l2-qcamera-app system/bin/v4l2-qcamera-app
cp -a tmp/bin/diag_mdlog system/bin/diag_mdlog
cp -a tmp/bin/rmt_storage system/bin/rmt_storage
cp -a tmp/bin/hci_qcomm_init system/bin/hci_qcomm_init
cp -a tmp/bin/mpdecision system/bin/mpdecision
cp -a tmp/bin/port-bridge system/bin/port-bridge
cp -a tmp/bin/sns_cm_test system/bin/sns_cm_test
cp -a tmp/bin/netmgrd system/bin/netmgrd
cp -a tmp/bin/thermald system/bin/thermald
cp -a tmp/bin/usbhub_init system/bin/usbhub_init
cp -a tmp/bin/ks system/bin/ks
cp -a tmp/bin/qseecomd system/bin/qseecomd
cp -a tmp/bin/ds_fmc_appd system/bin/ds_fmc_appd
cp -a tmp/bin/usbhub system/bin/usbhub
cp -a tmp/bin/sns_dsps_tc0001 system/bin/sns_dsps_tc0001
cp -a tmp/bin/sns_smr_loopback_test system/bin/sns_smr_loopback_test
cp -a tmp/bin/qmuxd system/bin/qmuxd
cp -a tmp/bin/mm-audio-send-cal system/bin/mm-audio-send-cal
cp -a tmp/bin/diag_klog system/bin/diag_klog
cp -a tmp/bin/PktRspTest system/bin/PktRspTest
cp -a tmp/bin/mm-qcamera-daemon system/bin/mm-qcamera-daemon
cp -a tmp/bin/sensors.qcom system/bin/sensors.qcom
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/media/video/AndroidInSpace.240p.mp4 system/media/video/AndroidInSpace.240p.mp4
cp -a tmp/media/video/AndroidInSpace.480p.mp4 system/media/video/AndroidInSpace.480p.mp4
cp -a tmp/media/video/Sunset.240p.mp4 system/media/video/Sunset.240p.mp4
cp -a tmp/media/video/Sunset.480p.mp4 system/media/video/Sunset.480p.mp4
cp -a tmp/media/LMprec_508.emd system/media/LMprec_508.emd
cp -a tmp/media/PFFprec_600.emd system/media/PFFprec_600.emd
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip
sudo umount tmp
rm -rf tmp
rm -rf occam-jop40c
rm system.ext4.img

