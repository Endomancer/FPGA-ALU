@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 71293f8ce69b4ff8950c517dbeee90a9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TwosCompliment_tb_behav xil_defaultlib.TwosCompliment_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
