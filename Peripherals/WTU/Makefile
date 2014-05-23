VC=ncverilog
VC_OPTS=+gui +access+rwc


WTU_UNIT_FILES=wtu_unit.v
WTU_UNIT_T_FILES=tb_wtu_unit.v

WTU_FILES=wtu.v $(WTU_UNIT_FILES)
WTU_T_FILES=tb_wtu.v

WTU_GEN_FILES=wtu_lvl_*.v wtu_top.v $(WTU_UNIT_FILES) loader.v
WTU_T_GEN_FILES=tb_wtu_top.v

NUM_WTU_LEVELS=3

all: generate

wtu_unit:
	$(VC) $(WTU_UNIT_T_FILES) $(WTU_UNIT_FILES) $(VC_OPTS)

wtu:
	$(VC) $(WTU_T_FILES) $(WTU_FILES) $(VC_OPTS)

generate:
	./makeWtuTree.pl $(NUM_WTU_LEVELS)

testgen: generate
	$(VC) $(WTU_GEN_FILES) $(WTU_T_GEN_FILES) $(VC_OPTS)

debug: generate
	$(VC) $(WTU_GEN_FILES) $(WTU_T_GEN_FILES) $(VC_OPTS) +tcl+lv2debug.tcl
