# Set DRC check severity to Warning
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]

# I/O Standards for all ports
# Differential signals
for {set i 0} {$i < 6} {incr i} {
    set_property IOSTANDARD LVDS_18 [get_ports rx_data_in_p[$i]]
    set_property IOSTANDARD LVDS_18 [get_ports rx_data_in_n[$i]]
    set_property IOSTANDARD LVDS_18 [get_ports tx_data_out_p[$i]]
    set_property IOSTANDARD LVDS_18 [get_ports tx_data_out_n[$i]]
}

set_property IOSTANDARD LVDS_18 [get_ports tx_clk_out_p]
set_property IOSTANDARD LVDS_18 [get_ports tx_clk_out_n]
set_property IOSTANDARD LVDS_18 [get_ports tx_frame_out_p]
set_property IOSTANDARD LVDS_18 [get_ports tx_frame_out_n]
set_property IOSTANDARD LVDS_18 [get_ports rx_frame_in_p]
set_property IOSTANDARD LVDS_18 [get_ports rx_frame_in_n]
set_property IOSTANDARD LVDS_18 [get_ports rx_clk_in_p]
set_property IOSTANDARD LVDS_18 [get_ports rx_clk_in_n]

# Single-ended signals
set_property IOSTANDARD LVCMOS18 [get_ports FX3_RESETn]
set_property IOSTANDARD LVCMOS18 [get_ports PL_LED]
set_property IOSTANDARD LVCMOS18 [get_ports RX1_LED]
set_property IOSTANDARD LVCMOS18 [get_ports RX2_LED]
set_property IOSTANDARD LVCMOS18 [get_ports TX1_LED]
set_property IOSTANDARD LVCMOS18 [get_ports TX2_LED]
set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_PC2PL]
set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_PL2PC]
set_property IOSTANDARD LVCMOS18 [get_ports VC_SEL_40M]
set_property IOSTANDARD LVCMOS18 [get_ports gpio_sync]

# Pin locations for all ports
# RX Data pins
for {set i 0} {$i < 6} {incr i} {
    set_property PACKAGE_PIN [lindex {Y19 W20 W19 R17 V18 W16} $i] [get_ports rx_data_in_p[$i]]
    set_property PACKAGE_PIN [lindex {Y18 V20 W18 R16 V17 V16} $i] [get_ports rx_data_in_n[$i]]
    set_property PACKAGE_PIN [lindex {Y17 U15 W15 Y14 W13 U12} $i] [get_ports tx_data_out_p[$i]]
    set_property PACKAGE_PIN [lindex {Y16 U14 V15 W14 V12 T12} $i] [get_ports tx_data_out_n[$i]]
}

# Clock and Frame pins
set_property PACKAGE_PIN N18 [get_ports tx_clk_out_p]
set_property PACKAGE_PIN N19 [get_ports tx_clk_out_n]
set_property PACKAGE_PIN M18 [get_ports tx_frame_out_p]
set_property PACKAGE_PIN M19 [get_ports tx_frame_out_n]
set_property PACKAGE_PIN L18 [get_ports rx_frame_in_p]
set_property PACKAGE_PIN L19 [get_ports rx_frame_in_n]
set_property PACKAGE_PIN K18 [get_ports rx_clk_in_p]
set_property PACKAGE_PIN K19 [get_ports rx_clk_in_n]

# LED and control signals
set_property PACKAGE_PIN A20 [get_ports RX1_LED]
set_property PACKAGE_PIN B19 [get_ports RX2_LED]
set_property PACKAGE_PIN C20 [get_ports TX1_LED]
set_property PACKAGE_PIN D20 [get_ports TX2_LED]
set_property PACKAGE_PIN E20 [get_ports PL_LED]
set_property PACKAGE_PIN F20 [get_ports FX3_RESETn]
set_property PACKAGE_PIN G20 [get_ports VC_SEL_40M]
set_property PACKAGE_PIN H20 [get_ports gpio_sync]

# UART signals
set_property PACKAGE_PIN I20 [get_ports USB_UART_PC2PL]
set_property PACKAGE_PIN J20 [get_ports USB_UART_PL2PC] 
