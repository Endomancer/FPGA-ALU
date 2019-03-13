@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 1b74de87c57546d7a8e1626c68dab51f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot NBitAnd_tb_behav xil_defaultlib.NBitAnd_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
