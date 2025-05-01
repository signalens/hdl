# DSP48E1/2 constraints
set_property ADREG 1 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property CED 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property CEAD 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}]
set_property RSTD 0 [get_cells -hier -filter {PRIMITIVE_TYPE =~ DSP48E1 || PRIMITIVE_TYPE =~ DSP48E2}] 