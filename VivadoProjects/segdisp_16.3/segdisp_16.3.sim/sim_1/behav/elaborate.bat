@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto bf39156f3c5c4ea0b23a60d610fcc46a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot SegDisp_tb_behav xil_defaultlib.SegDisp_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
