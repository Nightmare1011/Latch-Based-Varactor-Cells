# add your source code
SIM_SRC = sim.f
BAK = *.bak
LOG = *.log *.history *.key *.fsdb out_log.txt novas.rc novas.conf *.sdf.X *.vcd simv transcript
INCA_libs = INCA_libs
cad_dir = spyglass-* nWaveLog* BSSLib.lib* simv.daidir csrc xcelium.d vfastLog work

syn: 
	dc_shell -f synthesis.tcl | tee synthesis.log

sim: 
	vcs -f sim.f -full64 -R -sverilog -debug_access+all +v2k +neg_tchk -v2005

clean:
	-rm -f ${BAK} ${LOG}
	-rm -rf ${INCA_libs} ${cad_dir} 
