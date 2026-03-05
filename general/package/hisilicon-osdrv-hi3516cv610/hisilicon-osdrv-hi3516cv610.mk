################################################################################
#
# hisilicon-osdrv-hi3516cv610
#
################################################################################

HISILICON_OSDRV_HI3516CV610_VERSION =
HISILICON_OSDRV_HI3516CV610_SITE =
HISILICON_OSDRV_HI3516CV610_LICENSE = MIT
HISILICON_OSDRV_HI3516CV610_LICENSE_FILES = LICENSE

define HISILICON_OSDRV_HI3516CV610_INSTALL_TARGET_CMDS
# 	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/sensors
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc/sensors $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/sensor/config/*.ini

	$(INSTALL) -m 755 -d $(TARGET_DIR)/lib/modules/5.10.221/hisilicon
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/extdrv/ot_sensor_i2c.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/extdrv/ot_sensor_spi.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/extdrv/ot_pwm.ko

	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_acodec.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_adc.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_adec.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_aenc.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_aiisp.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_ai.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_aio.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_ao.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_base.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_chnl.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_cipher.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_devstat.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_h264e.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_h265e.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_hardware_cryptodev.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_isp.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_ive.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_jpege.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_km.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_mipi_rx.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_mmz.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_osal.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_otp.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_pm.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_rc.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_rgn.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_spi_dma_transfer.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_svac3e.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_svp_npu.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_sys.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_user.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_user_proc.ko
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_uvc.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vb.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vca.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_venc.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vgs.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vi.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vpp.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_vpss.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/ot_wdt.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/5.10.221/hisilicon $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/kmod/sys_config.ko

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/script/load*

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/sensors
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/sensors $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/sensor/*.so

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaac_comm.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaac_dec.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaac_enc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaac_sbr_dec.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaac_sbr_enc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libacs.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libaiisp.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libbnr.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libcalcflicker.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libdehaze.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libdnvqe.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libdrc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libextend_stats.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libir_auto.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libldci.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libmbedtls_harden_adapt.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libmp3_dec.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libmp3_enc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libmp3_lame.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libopus.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libot_mpi_isp.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libot_osal.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libsecurec.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_bcd.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_ivs_md.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_ae.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_aibnr.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_audio_adp.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_audio.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_awb.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_bla.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_cipher.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_devstat.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_isp.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_ive.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_km.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_otp.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_smartae.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_sysbind.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_syskol.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_sysmem.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libss_mpi_uvc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libsvp_acl.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libsvp_aicpu.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libupvqe.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvoice_engine.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_aec.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_agc.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_anr.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_common.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_eq.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_hpf.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_hs.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_record.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_res.so
# 	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(HISILICON_OSDRV_HI3516CV610_PKGDIR)/files/lib/libvqe_talkv2.so


endef

$(eval $(generic-package))
