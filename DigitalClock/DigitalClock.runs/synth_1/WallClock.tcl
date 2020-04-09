# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.cache/wt [current_project]
set_property parent.project_path /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_output_repo /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.srcs/sources_1/imports/Embedded_Prac4/BCD_Decoder.v
  /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.srcs/sources_1/imports/Embedded_Prac4/SS_Driver.v
  /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.srcs/sources_1/imports/Embedded_Prac4/Clock.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac4/DigitalClock/DigitalClock.srcs/constrs_1/new/constraints.xdc]


synth_design -top WallClock -part xc7a100tcsg324-1


write_checkpoint -force -noxdef WallClock.dcp

catch { report_utilization -file WallClock_utilization_synth.rpt -pb WallClock_utilization_synth.pb }
