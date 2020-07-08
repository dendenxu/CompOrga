
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab4 -dir "D:/Documents/Desktop/MIPS/Lab4/planAhead_run_1" -part xc7k160tffg676-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Documents/Desktop/MIPS/Lab4/TOP_single_CPU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Documents/Desktop/MIPS/Lab4} {ipcore_dir} }
add_files [list {ipcore_dir/DataMemory.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/InstructionMemory.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "TOP_single_CPU.ucf" [current_fileset -constrset]
add_files [list {TOP_single_CPU.ucf}] -fileset [get_property constrset [current_run]]
link_design
