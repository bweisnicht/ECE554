VC=ncverilog
VC_OPTS=+gui +access+rwc

VERILOG=filter.v memi_unit.v mem_unit.v mem.v mmu.v multiplier.v wti_logic.v wti_unit.v wt_logic.v wtu_inv.v wtu_top.v wtu_unit.v
TESTBENCH=tb_filter.v

all:
	$(VC) $(VERILOG) $(TESTBENCH) $(VC_OPTS)

restore:
	$(VC) $(VERILOG) $(TESTBENCH) $(VC_OPTS) +tcl+restore.tcl

clean:
	rm -rf INCA_libs ncverilog.log

