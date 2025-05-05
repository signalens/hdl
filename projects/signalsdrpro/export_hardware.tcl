puts "Run export_hardware.tcl"
open_project signalsdrpro.xpr
write_hw_platform -fixed -include_bit -force -file signalsdrpro.sdk/system_top.xsa
close_project 
