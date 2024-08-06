###############################################################################
## Copyright (C) 2021-2024 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

source ../../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

## The following HDL projects supports all the devices of EVAL-AD40XX-FMCZ:
##
##  AD4000/AD4001/AD4002/AD4003/AD4004/AD4005/AD4006/AD4007/AD4008/AD4010/AD4011/AD4020
##
## and also the EVAL-ADAQ400x eval board (with PMOD):
##
##  ADAQ4003
##
## NOTE: Make sure that you set up your required ADC resolution in pulsar_adc_bd.tcl
##

## Please select which eval board do you want to use
##
##    1 - EVAL-AD40XX-FMCZ
##    0 - EVAL-ADAQ400x
##
set AD40XX_ADAQ400X_N [get_env_param AD40XX_ADAQ400X_N 1]
set FOUR_WIRE_MODE [get_env_param FOUR_WIRE_MODE 0]

adi_project pulsar_adc_pmdz_zed 0 [list \
  FOUR_WIRE_MODE   [get_env_param FOUR_WIRE_MODE      0]]

adi_project_files pulsar_adc_pmdz_zed [list \
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/common/zed/zed_system_constr.xdc"]

if {$AD40XX_ADAQ400X_N == 0} {
  adi_project_files pulsar_adc_pmdz_zed [list \
    "system_top_adaq400x.v" \
    "system_constr_adaq400x.xdc" ]

} elseif {$AD40XX_ADAQ400X_N == 1} {

    adi_project_files pulsar_adc_pmdz_zed [list \
      "system_top_ad40xx.v" \
      "system_constr_ad40xx.xdc" ]

  if {$FOUR_WIRE_MODE == 0} {

    adi_project_files pulsar_adc_pmdz_zed [list \
      "system_constr_ad40xx_NFW.xdc" ]

  } elseif {$FOUR_WIRE_MODE == 1} {

    adi_project_files pulsar_adc_pmdz_zed [list \
      "system_constr_ad40xx_FW.xdc" ]

  }

} else {
  return -code error [format "ERROR: Invalid eval board type! ..."]
}

adi_project_run pulsar_adc_pmdz_zed
