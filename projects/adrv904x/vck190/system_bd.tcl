###############################################################################
## Copyright (C) 2024 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

## ADC FIFO depth in samples per converter
set adc_fifo_samples_per_converter [expr 32*1024]
## DAC FIFO depth in samples per converter
set dac_fifo_samples_per_converter [expr 32*1024]

set ADI_PHY_SEL 0

adi_project_files adrv904x_vck190 [list \
  "$ad_hdl_dir/library/util_cdc/sync_bits.v" ]

source $ad_hdl_dir/projects/common/vck190/vck190_system_bd.tcl
source $ad_hdl_dir/projects/scripts/adi_pd.tcl
source ../common/adrv904x_bd.tcl

#lane polarity

ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch0_txpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch1_txpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch2_txpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch3_txpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch0_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch1_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch2_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch3_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch4_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch5_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch6_rxpolarity_ext
ad_connect VCC ${rx_phy}/gt_bridge_ip_0/ch7_rxpolarity_ext

set mem_init_sys_path [get_env_param ADI_PROJECT_DIR ""]mem_init_sys.txt;

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/$mem_init_sys_path"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9

sysid_gen_sys_init_file

