# DSP48E1/2 constraints
set_property ADREG 1 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property DREG 1 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property CED 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property CEAD 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property RSTD 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]

# Specific constraints for DSP48E1 instances in IQ correction blocks
foreach channel {0 1 2 3} {
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_rx/i_rx_channel_$channel/i_ad_iqcor/g_loop[0].i_mul_i/i_mult_macro/dsp_v5_1.DSP48_V5_1]
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_rx/i_rx_channel_$channel/i_ad_iqcor/g_loop[0].i_mul_q/i_mult_macro/dsp_v5_1.DSP48_V5_1]
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_tx/i_tx_channel_$channel/i_ad_iqcor/g_loop[0].i_mul_i/i_mult_macro/dsp_v5_1.DSP48_V5_1]
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_tx/i_tx_channel_$channel/i_ad_iqcor/g_loop[0].i_mul_q/i_mult_macro/dsp_v5_1.DSP48_V5_1]
}

# Specific constraints for DSP48E1 instances in DDS blocks
foreach channel {0 1 2 3} {
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_tx/i_tx_channel_$channel/i_dds/dds_phase[1].i_dds_2/i_dds_1_0/i_dds_scale/i_mult_macro/dsp_v5_1.DSP48_V5_1]
    set_property USE_DPORT FALSE [get_cells i_system_wrapper/system_i/axi_ad9361/inst/i_tx/i_tx_channel_$channel/i_dds/dds_phase[1].i_dds_2/i_dds_1_1/i_dds_scale/i_mult_macro/dsp_v5_1.DSP48_V5_1]
}

# Apply ADREG, DREG, CED, CEAD, and RSTD properties to all specific instances
foreach cell [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}] {
    set_property ADREG 1 $cell
    set_property DREG 1 $cell
    set_property CED 0 $cell
    set_property CEAD 0 $cell
    set_property RSTD 0 $cell
} 
