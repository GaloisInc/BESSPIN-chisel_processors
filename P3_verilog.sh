#!/usr/bin/env bash

# The gfe P3 verilog can be regenerated from the gfe P3 chisel
# sources using the gfe chipyard submodule  by running 
#    $ ./chisel_processors/build.sh P3
# in directory gfe/chisel_processors

# This script makes the chipyard verilator simulation target.
# Although the target fails to compile the P3 verilator model,
# it does succeed at generating the P3 verilog. 

# The P3 verilator compile error is expected because the work
# was not done to (1) modify the chipyard generator to support
# new P3 implementation options and (2) create a new P3 test harness.

# The P3 verilog generation is shown to be correct by diffing it
# with the P3 verilog provided with the gfe release (which produces
# a functional bitstream).

# The following 3 steps can be used to generate and verify P3 verilog:

# Step 1: Build the chipyard toolchain (see "Notes to Step 1" below)
cd ..
workdir=$(pwd)
echo -e "\nworkdir = $workdir"

cd $workdir/chisel_processors/chipyard
echo -e "\nPWD = $(pwd)\n"

./scripts/init-submodules-no-riscv-tools.sh --no-firesim
./scripts/build-toolchains.sh 

# Step 2: Create the P3 verilog (see "Notes to Step 2" below)

cd $workdir/chisel_processors
./build.sh P3

# Step 3: Verify that the above steps regenerated P3 verilog correctly:

echo -e "\nPWD = $(pwd)\n"

echo -e "\ndiffing ..."
ls -alg chipyard/sims/verilator/generated-src/example.TestHarnessGFE.BoomP3FPGAConfig/example.TestHarnessGFE.BoomP3FPGAConfig.top.v P3/xilinx_ip/hdl/example.TestHarnessGFE.BoomP3FPGAConfig.top.v
diff    chipyard/sims/verilator/generated-src/example.TestHarnessGFE.BoomP3FPGAConfig/example.TestHarnessGFE.BoomP3FPGAConfig.top.v P3/xilinx_ip/hdl/example.TestHarnessGFE.BoomP3FPGAConfig.top.v

echo -e "\ndiffing ..."
ls -alg chipyard/sims/verilator/generated-src/example.TestHarnessGFE.BoomP3FPGAConfig/example.TestHarnessGFE.BoomP3FPGAConfig.top.mems.v P3/xilinx_ip/hdl/example.TestHarnessGFE.BoomP3FPGAConfig.top.mems.v
diff    chipyard/sims/verilator/generated-src/example.TestHarnessGFE.BoomP3FPGAConfig/example.TestHarnessGFE.BoomP3FPGAConfig.top.mems.v P3/xilinx_ip/hdl/example.TestHarnessGFE.BoomP3FPGAConfig.top.mems.v


# Notes to Step 1
# ----------------------------------------------------------------
# Verify that no risc-v toolchains are in $PATH.
# Note that previous gfe builds may have modifed /etc/bash.bashrc 
# to add a risc-v toolchain file to $PATH. If so, this needs to
# be fixed.
# 
# May need to execute the following:
# sudo apt install libglib2.0-dev
# sudo apt-get update -y
# sudo apt-get install -y libpixman-1-dev

# Notes to Step 2:  May need to execute the following:
# ----------------------------------------------------------------
# sudo apt update
# sudo apt install default-jre
# sudo apt install openjdk-11-jre-headless
# sudo apt install openjdk-8-jre-headless
