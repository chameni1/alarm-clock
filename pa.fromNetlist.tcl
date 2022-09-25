
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name alarm_clock -dir "C:/Users/lenovo/Desktop/TP FPGA/TP1_APAI_imen/TP3_fpga/TP3/alarm_clock_solution/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/lenovo/Desktop/TP FPGA/TP1_APAI_imen/TP3_fpga/TP3/alarm_clock_solution/alarm_clock.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/lenovo/Desktop/TP FPGA/TP1_APAI_imen/TP3_fpga/TP3/alarm_clock_solution} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "alarm_clock.ucf" [current_fileset -constrset]
add_files [list {alarm_clock.ucf}] -fileset [get_property constrset [current_run]]
link_design
