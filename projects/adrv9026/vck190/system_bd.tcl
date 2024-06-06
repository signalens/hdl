###############################################################################
## Copyright (C) 2023 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

## FIFO depth is 18Mb - 1M samples
set dac_fifo_address_width 17

## NOTE: With this configuration the #36Kb BRAM utilization is at ~57%

set ADI_PHY_SEL 0

source $ad_hdl_dir/projects/common/vck190/vck190_system_bd.tcl
source $ad_hdl_dir/projects/common/xilinx/dacfifo_bd.tcl
source $ad_hdl_dir/projects/scripts/adi_pd.tcl
source ../common/adrv9026_bd.tcl

#lane polarity

ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch0_txpolarity_ext
ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch2_txpolarity_ext
ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch0_rxpolarity_ext
ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch1_rxpolarity_ext
ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch2_rxpolarity_ext
ad_connect VCC jesd204_phy_rxtx/gt_bridge_ip_0/ch3_rxpolarity_ext

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9

sysid_gen_sys_init_file