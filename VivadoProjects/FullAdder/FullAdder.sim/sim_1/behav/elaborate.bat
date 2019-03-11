@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto bfb961fbfaf74a7b81beb0d05f929b06 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot NBitAdder_tb_behav xil_defaultlib.NBitAdder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
