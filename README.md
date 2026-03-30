# Latch-Based-Varactor-Cells
A Latch-Based Varactor Cell (LBVC) is a circuit that can provide Tunable Delay Line (TDL) functionality, mainly by controlling the delay on the line through the load effect of the capacitor.

You must have your own standard cell library.

*** This circuit must be operated under VCS-XA; otherwise, its signal will be unknown. ***

APR tool: innovus

Simulator: vcs

========================== Guide ==========================

Command for RTL: 01_RTL

-Simulation: $make sim / $make vcs

-Remove files: $make clean

Command for Gate_level: 02_Gate_level

-Synthesis: $make syn

-Simulation: $make sim

-Remove files: $make clean

Command for APR: 03_APR

-Move to "run" directory: $cd run

-Run innovus: $innovus 

-Run APR script: innovus1> source ../scripts/top_soce.tcl

-Move to "post_sim": cd ../post_sim

-Simulation: $make sim 

-Remove files: $make clean

=========================== Done ===========================
