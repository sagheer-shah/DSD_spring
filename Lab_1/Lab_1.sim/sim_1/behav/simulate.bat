@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim Mux_16to1_TB_behav -key {Behavioral:sim_1:Functional:Mux_16to1_TB} -tclbatch Mux_16to1_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
