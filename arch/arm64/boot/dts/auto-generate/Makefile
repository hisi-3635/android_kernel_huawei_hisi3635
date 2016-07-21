dtb-y += CARRERA_TUGL_V4_66T_config.dtb
dtb-y += CARRERA_UL_V3_config.dtb
dtb-y += CARRERA_UL_VN2_128G_config.dtb
dtb-y += CARRERA_CLG_VN1_FPGA_config.dtb
dtb-y += CARRERA_CLG_V3_config.dtb
dtb-y += CARRERA_TUGL_VN2_128G_config.dtb
dtb-y += CARRERA_TUGL_V1_config.dtb
dtb-y += CARRERA_TUGL_VN2_128G_FPGA_config.dtb
dtb-y += CARRERA_TUGL_VN1_FPGA_config.dtb
dtb-y += CARRERA_CLG_VN1_66T_config.dtb
dtb-y += CARRERA_UL_V4_66T_config.dtb
dtb-y += CARRERA_CLG_VN2_32G_config.dtb
dtb-y += CARRERA_CLG_V1_config.dtb
dtb-y += CARRERA_TUGL_VN1_66T_config.dtb
dtb-y += CARRERA_TUGL_V3_config.dtb
dtb-y += CARRERA_CLG_V4_66T_config.dtb
dtb-y += CARRERA_UL_V1_config.dtb
dtb-y += CARRERA_UL_VN2_32G_config.dtb
dtb-y += CARRERA_TUGL_VN2_32G_config.dtb
dtb-y += CARRERA_UL_VN1_66T_config.dtb
dtb-y += CARRERA_UL_VN1_66T_FPGA_config.dtb
dtb-y += CARRERA_CLG_VN2_128G_config.dtb
dtb-y += CARRERA_CLG_V3_66T_config.dtb
dtb-y += CARRERA_UL_V3_66T_config.dtb
dtb-y += CARRERA_TUGL_V3_66T_config.dtb

targets += dtbs

dtbs: $(addprefix $(obj)/, $(dtb-y))
	$(Q)rm -f $(obj)/../*.dtb

clean-files := *.dtb
