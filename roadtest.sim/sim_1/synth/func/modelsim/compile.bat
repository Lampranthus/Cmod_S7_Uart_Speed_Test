@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Mentor Graphics ModelSim Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Sat Jun 27 00:05:30 +0100 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
set bin_path=C:\intelFPGA_lite\19.1\modelsim_ase\win32aloem
call %bin_path%/vsim  -c -do "do {tb_C7mod_compile.do}" -l compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
