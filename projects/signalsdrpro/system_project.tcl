source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl
source ./system_bd.tcl

set p_device "xc7z020clg400-1"
adi_project signalsdrpro

adi_project_files signalsdrpro [list \
  "system_top.v" \
  "system.xdc" \
  "$ad_hdl_dir/library/common/ad_iobuf.v"]

set_property STEPS.WRITE_BITSTREAM.TCL.PRE [list [file join $ad_hdl_dir projects scripts write_bitstream_pre.tcl]] [get_runs impl_1]

adi_project_run signalsdrpro
source $ad_hdl_dir/library/axi_ad9361/axi_ad9361_delay.tcl
