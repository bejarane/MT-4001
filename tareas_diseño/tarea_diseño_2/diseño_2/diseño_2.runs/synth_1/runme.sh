#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/anxiety/Xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/home/anxiety/Xilinx/Vivado/2021.1/bin
else
  PATH=/home/anxiety/Xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/home/anxiety/Xilinx/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/anxiety/Dropbox/tec/2021/periodo 2/digitales/git_end/tareas_diseño/tarea_diseño_2/diseño_2/diseño_2.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log main_tb.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source main_tb.tcl
