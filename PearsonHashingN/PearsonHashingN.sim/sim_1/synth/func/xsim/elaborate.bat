@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Jul 05 17:38:42 +0100 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto d27ec749265f456a8e2717d9a248cd4a --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot PearsonHashingN_tb_func_synth xil_defaultlib.PearsonHashingN_tb -log elaborate.log"
call xelab  -wto d27ec749265f456a8e2717d9a248cd4a --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot PearsonHashingN_tb_func_synth xil_defaultlib.PearsonHashingN_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
