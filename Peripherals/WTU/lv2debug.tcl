
# NC-Sim Command File
# TOOL:	ncsim(64)	08.20-s029
#
#
# You can restore this configuration with:
#
#     ncverilog wtu_lvl_1.v wtu_lvl_2.v wtu_lvl_3.v wtu_top.v tb_wtu_top.v +gui +access+rwc +tcl+lv2debug.tcl
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
probe -create -database waves tb_wtu_top.UUT.clk tb_wtu_top.UUT.en tb_wtu_top.UUT.en_count tb_wtu_top.UUT.en_v tb_wtu_top.UUT.in tb_wtu_top.UUT.wtu0.wtu_m.lpo tb_wtu_top.UUT.wtu0.wtu_m.hpo tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.in tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.in_prev1 tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.in_prev2 tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.tmpA tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.tmpB tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.hpo tb_wtu_top.UUT.wtu0.wtu_hp.wtu_m.lpo tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.in tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.in_prev1 tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.in_prev2 tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.tmpA tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.tmpB tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.hpo tb_wtu_top.UUT.wtu0.wtu_lp.wtu_m.lpo

simvision -input lv2debug.tcl.svcf
