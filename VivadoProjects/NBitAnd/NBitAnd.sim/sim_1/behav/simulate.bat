@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim NBitAnd_tb_behav -key {Behavioral:sim_1:Functional:NBitAnd_tb} -tclbatch NBitAnd_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
