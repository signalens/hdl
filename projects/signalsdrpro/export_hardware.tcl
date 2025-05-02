puts "Current directory: [pwd]"
open_project signalsdrpro.xpr
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
open_run impl_1
write_hw_platform -fixed -include_bit -force -file signalsdrpro/system_top.xsa
close_project 
