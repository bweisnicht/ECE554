
# NC-Sim Command File
# TOOL:	ncsim(64)	08.20-s029
#
#
# You can restore this configuration with:
#
#     ncverilog filter.v memi_unit.v mem_unit.v mem.v mmu.v multiplier.v wti_logic.v wti_unit.v wt_logic.v wtu_inv.v wtu_top.v wtu_unit.v tb_filter.v +gui +access+rwc +tcl+restore.tcl
#

set tcl_prompt1 {puts -nonewline "ncsim> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 1
set show_force 1
set force_reset_by_reinvoke 0
alias . run
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves tb_filter.freq_fifo_data tb_filter.in_fifo_data tb_filter.out_fifo_data

simvision -input restore.tcl.svcf
