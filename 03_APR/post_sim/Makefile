# add your source code
SIM_SRC = sim.f
BAK = *.bak
LOG = *.log *.history *.key *.fsdb out_log.txt novas.rc novas.conf *.sdf.X *.vcd simv transcript
INCA_libs = INCA_libs
cad_dir = spyglass-* nWaveLog* BSSLib.lib* simv.daidir csrc xcelium.d vfastLog work
PG ?= pg2

sim: 
	vcs -f sim.f -full64 -R -sverilog -debug_access+all +v2k +neg_tchk -v2005 +define+Wave +define+$(PG)

vcs: 
	vcs -f sim.f -full64 -R -sverilog -debug_access+all +v2k +neg_tchk -v2005 +define+Wave +define+$(PG)

ncverilog:
	ncverilog -f sim.f +define+Wave +define+$(PG) +define+VCD +access+r

modelsim:
	vlib work
	vlog -f sim.f +define+$(PG)
	vsim -c work.testbench -do "run -ALL; quit"

clean:
	-rm -f ${BAK} ${LOG}
	-rm -rf ${INCA_libs} ${cad_dir} 
